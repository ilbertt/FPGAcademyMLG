#include<stdio.h>
#include"mylib.h"
//#include "hls_math.h"

//#include<stdlib.h>

void kernel(short int *op, bool *res);
//void fft_top(float in[X], float out[N]);

/*float act_fun1(float vec){
	if(vec<=-4)
		vec=0;
	else if(vec>-4 && vec<=0)
		vec=0.5*(vec*0.25+1)*(vec*0.25+1);
	else if(vec>0 && vec<4)
		vec=1-0.5*(vec*0.25-1)*(vec*0.25-1);
	else
		vec=1;
	return vec;
}*/

int main(){
	char filename[10];
	short int op[X];
	bool resFPGA, res;
	float tmp;
	sprintf(filename, "stimulus.dat");
		FILE * stimulus_file=fopen(filename, "r");
		int line=-1;
		if(stimulus_file==NULL) {
			printf("Error! File not found.\n");
			return 1;
		}
		while(!feof(stimulus_file) && line<X){
			if (line==-1)
				fscanf(stimulus_file,"%d", &res);
			else
				fscanf(stimulus_file,"%d", &op[line]);

			line++;
		}
		fclose(stimulus_file);
	/*srand(0);
	for(int i=0; i<X; i++) {
			op[i]=(float) rand() / ((float) RAND_MAX/X);
	}*/

	kernel(op, &resFPGA);
	/*float fft[N];
	fft_top(op, fft);
	for(int i=0; i<N ; i++)
		printf("%f\n", fft[i]);*/
	/*  float vec0[N], vec1[N1], vec2[N2], vec3[N3], vec4[N4],resCPU;
	    fft_top(op, vec0);


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

	if(resFPGA!=resCPU) {
		printf("error: %f != %f", resFPGA, resCPU);
		//return 1;
		} else {
			printf("Result: %f\n", resFPGA);
		}*/
	if(resFPGA!=res){
		printf("expected: %d\n result: %d\n", res, resFPGA);
		return 1;
	}


	return 0;
}
