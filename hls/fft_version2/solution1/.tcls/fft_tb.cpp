/* to obtain a fft length of 2048 modify line 113 of Vivado_folder/2019.2/include/hlls_fft.h 
	from: 
		static const unsigned max_nfft = 10; 
	to: 
		static const unsigned max_nfft = 11;
*/
#include<stdio.h>
#define FFT_LENGTH 2048
void fft_top(
    float in[FFT_LENGTH],
    float out[FFT_LENGTH]);
int main(){
	char filename[10];
	float in[FFT_LENGTH], out[FFT_LENGTH];
	sprintf(filename, "stimulus.dat");
	printf("%s\n",filename);
	FILE * stimulus_file=fopen(filename, "r");
	int line=0;
	if(stimulus_file==NULL) {
		printf("Error! File not found.\n");
		return 1;
	}
	while(!feof(stimulus_file) && line<FFT_LENGTH){
		fscanf(stimulus_file,"%f", &in[line]);
		line++;
	}
	printf("%d\n",line);
	fclose(stimulus_file);
	fft_top(in,out);
	FILE *result_file= fopen("result.dat","w");
	for (int i=0; i<FFT_LENGTH; i++)
		fprintf(result_file,"%.10f\n", out[i]);

	fclose(result_file);
	return 0;

}
