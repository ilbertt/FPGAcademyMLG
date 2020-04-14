#include "hls_math.h"
#define N 2048
#define N1 16
#define N2 8
#define N3 4
#define N4 2

float act_fun(float vec){
	if(vec<=-4)
		vec=0;
	else if(vec>-4 && vec<=0)
		vec=0.5*(vec*0.25+1)*(vec*0.25+1);
	else if(vec>0 && vec<4)
		vec=1-0.5*(vec*0.25-1)*(vec*0.25-1);
	else
		vec=1;
	return vec;
}

void kernel(float *op, float *w1, float *w2, float *w3, float *w4, float *wout, float res){
	#pragma	HLS INTERFACE m_axi depth=2048 port=op bundle=gmem0
	#pragma HLS INTERFACE m_axi depth=32768 port=w1 bundle=gmem1
	#pragma HLS INTERFACE m_axi depth=128 port=w2 bundle=gmem2
	#pragma HLS INTERFACE m_axi depth=32 port=w3 bundle=gmem3
	#pragma HLS INTERFACE m_axi depth=8 port=w4 bundle=gmem4
	#pragma HLS INTERFACE m_axi depth=2 port=wout bundle=gmem5


	#pragma HLS INTERFACE s_axilite port=op
	#pragma HLS INTERFACE s_axilite port=w1
	#pragma HLS INTERFACE s_axilite port=w2
	#pragma HLS INTERFACE s_axilite port=w3
	#pragma HLS INTERFACE s_axilite port=w4
	#pragma HLS INTERFACE s_axilite port=wout
	#pragma HLS INTERFACE s_axilite port=res

	#pragma HLS INTERFACE s_axilite port=return
	float vec0[N], vec1[N1], vec2[N2], vec3[N3], vec4[N4];
	float acc_r, acc_i;

	loopdft:    for(int i=0; i<N; i++){
			#pragma HLS PIPELINE
	        for(int j=0, acc_r=0, acc_i=0; j<N; j++){
	            acc_r+=op[j]*cos((float)j*i*M_PI*2/N);
	            acc_i+=op[j]*sin((float)j*i*M_PI*2/N);
	        }
	        vec0[i]=sqrt(acc_r*acc_r+acc_i*acc_i);
	    }

	loop1: for(int i=0; i<N1; i++){
				for(int j=0; j<N; j++){
					#pragma HLS PIPELINE
					vec1[i]+=vec0[j]*w1[N*i+j];
				}
				vec1[i]=act_fun(vec1[i]);

	}
	loop2: for(int i=0; i<N2; i++){
				for(int j=0; j<N1; j++){
					#pragma HLS PIPELINE
					vec2[i]+=vec1[j]*w2[N1*i+j];
				}
				vec2[i]=act_fun(vec2[i]);
		}
	loop3: for(int i=0; i<N3; i++){
				for(int j=0; j<N2; j++){
					#pragma HLS PIPELINE
					vec3[i]+=vec2[j]*w3[N2*i+j];
				}
				vec3[i]=act_fun(vec3[i]);
		}
	loop4: for(int i=0; i<N4; i++){
				for(int j=0; j<N3; j++){
					#pragma HLS PIPELINE
					vec4[i]+=vec3[j]*w4[N3*i+j];
				}
				vec4[i]=act_fun(vec4[i]);
			}
	loopout:for(int j=0; j<N4; j++){
		#pragma HLS PIPELINE
		res=res+vec4[j]*wout[j];
	}
}
