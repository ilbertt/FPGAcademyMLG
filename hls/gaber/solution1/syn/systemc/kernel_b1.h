// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __kernel_b1_H__
#define __kernel_b1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct kernel_b1_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(kernel_b1_ram) {
        ram[0] = "0b10111101010111100101001110011001";
        ram[1] = "0b10111101001101001000001110110100";
        ram[2] = "0b00111110000111001001010011010110";
        ram[3] = "0b00111101110100101010111101011011";
        ram[4] = "0b10111110001111010111110111011101";
        ram[5] = "0b00111110001100001100100110001010";
        ram[6] = "0b10111110011000110100001011110100";
        ram[7] = "0b10111101111011100000111000101101";
        ram[8] = "0b00111101000111001000000011001100";
        ram[9] = "0b10111101011101001000000001011110";
        ram[10] = "0b00111110100011011111011011010111";
        ram[11] = "0b10111100101011110000010110101000";
        ram[12] = "0b00111110010111001000001010100000";
        ram[13] = "0b10111110000110001000011010110001";
        ram[14] = "0b00111110000101001000110000011011";
        ram[15] = "0b00111101111000000100111100011011";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(kernel_b1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


kernel_b1_ram* meminst;


SC_CTOR(kernel_b1) {
meminst = new kernel_b1_ram("kernel_b1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~kernel_b1() {
    delete meminst;
}


};//endmodule
#endif
