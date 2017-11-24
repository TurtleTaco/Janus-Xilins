#include "janus.hpp"

using namespace std;

double mul = 0.005;

void janus_run(REB_PARTICLE_INT_TYPE p_int[6*N], REB_PARTICLE_INT_TYPE p_int_out[6*N], double p_mass[N],int steps,double dt){
    double p[3*N];  // x y z 
    janus_loop:for(long i=0;i<steps;i++){
#pragma HLS pipeline
        // One leapfrog step
        // drift() and to_double_pos;
        drift_loop:for(unsigned int i=0; i<N; i++){
            p_int[6*i+0] += (REB_PARTICLE_INT_TYPE)(mul*(double)p_int[6*i+3]);
            p_int[6*i+1] += (REB_PARTICLE_INT_TYPE)(mul*(double)p_int[6*i+4]);
            p_int[6*i+2] += (REB_PARTICLE_INT_TYPE)(mul*(double)p_int[6*i+5]);
            p[3*i+0] = ((double)p_int[6*i+0])*scale_pos;
            p[3*i+1] = ((double)p_int[6*i+1])*scale_pos;
            p[3*i+2] = ((double)p_int[6*i+2])*scale_pos;
        }

        // gravity();
        double ax;
        double ay;
        double az;
        gravity_loop:for(unsigned int i=0; i<N; i++){
            gravity_inner_loop:for(unsigned int j=0; j<N; j++){
            	if (j == 0){
            		ax = 0;
            		ay = 0;
            		az = 0;
            	}
                if (i!=j){
                    const double dx = p[3*i+0] - p[3*j+0];
                    const double dy = p[3*i+1] - p[3*j+1];
                    const double dz = p[3*i+2] - p[3*j+2];
                    const double pre_sqrt = dx*dx + dy*dy + dz*dz;
                    const double _r = sqrt(pre_sqrt);
#pragma HLS RESOURCE variable=_r core=DSqrt
                    const double pre_recip = 1./(pre_sqrt * _r);
#pragma HLS RESOURCE variable=pre_recip core=DRecip
                    const double prefact = -1*pre_recip*p_mass[j];
#pragma HLS RESOURCE variable=prefact core=dmul
                    ax  += prefact*dx;
                    ay  += prefact*dy;
                    az  += prefact*dz;
                }
            }
            // kick();
            p_int[6*i+3] += (dt*ax*inv_scale_vel);
            p_int[6*i+4] += (dt*ay*inv_scale_vel);
            p_int[6*i+5] += (dt*az*inv_scale_vel);
        }

        // drift();
        end_drift_loop:for(unsigned int i=0; i<N; i++){
            p_int[6*i+0] += (REB_PARTICLE_INT_TYPE)(mul*p_int[6*i+3]);
            p_int[6*i+1] += (REB_PARTICLE_INT_TYPE)(mul*p_int[6*i+4]);
            p_int[6*i+2] += (REB_PARTICLE_INT_TYPE)(mul*p_int[6*i+5]);
        }
    }

    output_loop:for(unsigned int i=0; i<6*N; i++){
#pragma HLS unroll
        p_int_out[i] = p_int[i];
    }

}

void astroSim(REB_PARTICLE_INT_TYPE result[54]){
#pragma HLS ARRAY_PARTITION variable=p complete dim=1
#pragma HLS ARRAY_PARTITION variable=p_int complete dim=1
#pragma HLS ARRAY_PARTITION variable=p_mass complete dim=1

//#pragma HLS RESOURCE variable=p_int core=RAM_T2P_BRAM
//#pragma HLS RESOURCE variable=p core=RAM_T2P_BRAM
//#pragma HLS RESOURCE variable=p_mass core=RAM_T2P_BRAM

	janus_run(p_int, result, p_mass, 6284, 0.01);

}
