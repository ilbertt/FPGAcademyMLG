/* to obtain a fft length of 2048 modify line 113 of Vivado_folder/2019.2/include/hlls_fft.h
	from:
		static const unsigned max_nfft = 10;
	to:
		static const unsigned max_nfft = 11;
*/
#include<stdio.h>
//#include "hls_math.h"
#include<stdlib.h>
#include"mylib.h"
#include<string.h>

const int SIM_FRAMES = 100;

void fft_top(
    float in[N],
    float op[N]);

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
	//float in[FFT_LENGTH], out[FFT_LENGTH];
	float in[N], op[N], resCPU, resFPGA;
	float vec0[N], vec1[N1], vec2[N2], vec3[N3], vec4[N4];
	/*srand(0);
	for(int i=0; i<N; i++) {
			op[i]=(float) rand() / ((float) RAND_MAX/X);
	}*/

	char dat_filename[20]={0};
	for (int frame = 0; frame < SIM_FRAMES; ++frame){

		FILE *stimfile;

		sprintf(dat_filename, "test/keyword%d", frame);
		strcat(dat_filename,".dat");
		stimfile = fopen(dat_filename, "r");

		int line=0;

		if(stimfile==NULL) {
			printf("Error! File not found.\n");
			return 1;
		}
		while(!feof(stimfile) && line<N){
			fscanf(stimfile,"%f", &in[line]);
			line++;
		}
		//printf("%d\n",line);

		fft_top(in,op);


		fclose(stimfile);



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
			printf("%d: %f\n", frame, resFPGA);
		}
	}
	return 0;
}
