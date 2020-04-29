#include<stdio.h>
#include"mylib.h"
//#include "hls_math.h"

#include<stdlib.h>

void kernel(float *op, float *res);

float act_fun1(float vec){
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

int main(){
	float op[N], resCPU, resFPGA;
	float vec0[N], vec1[N1], vec2[N2], vec3[N3], vec4[N4];
	srand(0);
	for(int i=0; i<N; i++) {
			op[i]=(float) rand() / ((float) RAND_MAX/X);
	}




		for(int i=0; i<N1; i++){
					vec1[i]=b1[i];
					for(int j=0; j<N; j++){
						vec1[i]+=op[j]*w1[N*i+j];
					}
					vec1[i]=act_fun1(vec1[i]);

		}
		for(int i=0; i<N2; i++){
					vec2[i]=b2[i];
					for(int j=0; j<N1; j++){
						vec2[i]+=vec1[j]*w2[N1*i+j];
					}
					vec2[i]=act_fun1(vec2[i]);
			}
		for(int i=0; i<N3; i++){
					vec3[i]=b3[i];
					for(int j=0; j<N2; j++){
						vec3[i]+=vec2[j]*w3[N2*i+j];
					}
					vec3[i]=act_fun1(vec3[i]);
			}
		for(int i=0; i<N4; i++){
					vec4[i]=b4[i];
					for(int j=0; j<N3; j++){
						vec4[i]+=vec3[j]*w4[N3*i+j];
					}
					vec4[i]=act_fun1(vec4[i]);
				}
		resCPU=b5[0];
		for(int j=0; j<N4; j++){
			resCPU=resCPU+vec4[j]*w5[j];
		}
			resCPU=act_fun1(resCPU);
	kernel(op, &resFPGA);
	if(resFPGA!=resCPU) {
		printf("error: %f != %f", resFPGA, resCPU);
		//return 1;
		} else {
			printf("Result: %f\n", resFPGA);
		}
	return 0;
}
