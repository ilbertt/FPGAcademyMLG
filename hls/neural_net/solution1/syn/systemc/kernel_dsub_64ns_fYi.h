// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __kernel_dsub_64ns_fYi__HH__
#define __kernel_dsub_64ns_fYi__HH__
#include "ACMP_dsub.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(kernel_dsub_64ns_fYi) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_dsub<ID, 6, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_dsub_U;

    SC_CTOR(kernel_dsub_64ns_fYi):  ACMP_dsub_U ("ACMP_dsub_U") {
        ACMP_dsub_U.clk(clk);
        ACMP_dsub_U.reset(reset);
        ACMP_dsub_U.ce(ce);
        ACMP_dsub_U.din0(din0);
        ACMP_dsub_U.din1(din1);
        ACMP_dsub_U.dout(dout);

    }

};

#endif //
