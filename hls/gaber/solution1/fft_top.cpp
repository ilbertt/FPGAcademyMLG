#include "fft_top.h"
#include "mylib.h"

void dummy_proc_fe(
    bool direction,
    config_t* config,
    short int *in,
    cmpxDataIn out[FFT_LENGTH])
{
    int i;
    config->setDir(direction);
    config->setSch(0x2AB);
    for (i=0; i< FFT_LENGTH; i++)
        #pragma HLS PIPELINE
    	out[i] = cmpxDataIn((float)in[i]/512, 0);;
}

void dummy_proc_be(
    status_t* status_in,
    cmpxDataOut in[FFT_LENGTH],
    float out[FFT_LENGTH])
{
    int i;
    float im, re;
    for (i=0; i< N; i++) {
		#pragma HLS PIPELINE
    	re=in[i].real().to_float();
    	im=in[i].imag().to_float();
        out[i] = (re*re+im*im)*262144; //512**2
    }
}


void fft_top(
    short int in[FFT_LENGTH],
    float out[N])
{
	#pragma HLS dataflow
	complex<data_in_t> xn[FFT_LENGTH];
    complex<data_out_t> xk[FFT_LENGTH];
    config_t fft_config;
    status_t fft_status;
    bool direction=1;

    dummy_proc_fe(direction, &fft_config, in, xn);
    // FFT IP
    hls::fft<config1>(xn, xk, &fft_status, &fft_config);
    dummy_proc_be(&fft_status, xk, out);
}
