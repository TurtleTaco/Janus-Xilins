#ifndef _JANUS_H_
#define _JANUS_H_

#include <stdio.h>
#include <stdlib.h>
#include "hls_math.h"
#include <stdint.h>
#include <string.h>
#include "hls_dsp.h"

// Number of particles
#define N 9

// Scale for conversion between FP and INT
const double scale_vel  = 1e-16;
const double inv_scale_vel = 1e16;
const double scale_pos  = 1e-16;
const double inv_scale_pos = 1e16;
const double scale_vel_pos = 1.;

// INT datatype used
#define REB_PARTICLE_INT_TYPE int64_t

//#pragma SDS data access_pattern(A:SEQUENTIAL, B:SEQUENTIAL, C:SEQUENTIAL)
void janus_run(REB_PARTICLE_INT_TYPE p_int_in[6*N], REB_PARTICLE_INT_TYPE p_int_out[6*N], double p_mass[N],int steps, double dt);
void astroSim(REB_PARTICLE_INT_TYPE result[54]);

#endif /* _JANUS_H_ */
