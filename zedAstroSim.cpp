#include "janus.hpp"

using namespace std;

double mul = 0.005;

REB_PARTICLE_INT_TYPE p_int[54] = {
		21709922250528, 57845061154043, -1290326677066,
		-3084904334499, 3164862379414, 72860648107,
		-1529074277548495, -4329649810759809, -217536815870956,
		12130892048755062, -4636664872138580, -1492230266727991,
		-7051385792282048, 1305062392874893, 423980407616931,
		-2107118903711193, -11628741220859936, -38067721592922,
		8303864923760965, 5551748865431480, -1556226179998,
		-5694403294004744, 8300359440285254, -250486216637,
		-16007632981663540, 4507843866326728, 485350310380760,
		-1874661855400607, -7140231189065021, -103688562255236,
		-45444724195553632, -29811209359531872, 1140115745580475,
		2354668506120313, -3459544002171689, -38305410200901,
		-2998316596246585, -100512228718170960, 1866942196718307,
		3063599906570191, -107135147677418, -120072161180579,
		178418531053445952, 88433796310403696, -1982994964737093,
		-1032131635550300, 1941992816066720, 20584917278455,
		286228992820092192, -87910334836014848, -4786090163574258,
		523633993793736, 1755278382196959, -48214129381180,
	};

double p[54] = {
        0.0021709922250528,  0.0057845061154043,  -0.0001290326677066,
        -0.0003084904334499,  0.0003164862379414, 0.0000072860648107,
        -0.1529074277548495,  -0.4329649810759809,  -0.0217536815870956,
        1.2130892048755062,  -0.4636664872138580, -0.1492230266727991,
        -0.7051385792282048,  0.1305062392874893,  0.0423980407616931,
        -0.2107118903711193,  -1.1628741220859935, -0.0038067721592922,
        0.8303864923760965,  0.5551748865431479,  -0.0001556226179998,
        -0.5694403294004744,  0.8300359440285254, -0.0000250486216637,
        -1.6007632981663540,  0.4507843866326728,  0.0485350310380760,
        -0.1874661855400607,  -0.7140231189065021, -0.0103688562255236,
        -4.5444724195553627,  -2.9811209359531872,  0.1140115745580475,
        0.2354668506120313,  -0.3459544002171689, -0.0038305410200901,
        -0.2998316596246585,  -10.0512228718170959,  0.1866942196718307,
        0.3063599906570191,  -0.0107135147677418, -0.0120072161180579,
        17.8418531053445939,  8.8433796310403689,  -0.1982994964737093,
        -0.1032131635550300,  0.1941992816066720, 0.0020584917278455,
        28.6228992820092181,  -8.7910334836014847,  -0.4786090163574258,
        0.0523633993793736,  0.1755278382196959, -0.0048214129381180,
    };

double p_mass[9] = {
        1.0000000000000000,
        0.0000001660114153,
        0.0000024478382878,
        0.0000030404326480,
        0.0000003227156038,
        0.0009547919152112,
        0.0002858856727222,
        0.0000436624373583,
        0.0000515138377263,
    };

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
