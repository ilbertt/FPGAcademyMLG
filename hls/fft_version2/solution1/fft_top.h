#include "ap_fixed.h"
#include "hls_fft.h"

// configurable params
const char FFT_INPUT_WIDTH                     = 16;
const char FFT_OUTPUT_WIDTH                    = FFT_INPUT_WIDTH;
const char FFT_CONFIG_WIDTH                    = 16;
const char FFT_NFFT_MAX                        = 10;
const int  FFT_LENGTH                          = 1 << FFT_NFFT_MAX;


#include <complex>
using namespace std;

struct config1 : hls::ip_fft::params_t {
    static const unsigned ordering_opt = hls::ip_fft::natural_order;
    static const unsigned config_width = FFT_CONFIG_WIDTH;
};

typedef hls::ip_fft::config_t<config1> config_t;
typedef hls::ip_fft::status_t<config1> status_t;

typedef ap_fixed<FFT_INPUT_WIDTH,1> data_in_t;
typedef ap_fixed<FFT_OUTPUT_WIDTH,FFT_OUTPUT_WIDTH-FFT_INPUT_WIDTH+1> data_out_t;
typedef std::complex<data_in_t> cmpxDataIn;
typedef std::complex<data_out_t> cmpxDataOut;

void dummy_proc_fe(
    bool direction,
    config_t* config,
    float in[FFT_LENGTH],
    cmpxDataIn out[FFT_LENGTH]);

void dummy_proc_be(
    status_t* status_in,
    bool* ovflo,
    cmpxDataOut in[FFT_LENGTH],
    float out[FFT_LENGTH]);

void fft_top(
    float in[FFT_LENGTH],
    float out[FFT_LENGTH]);
