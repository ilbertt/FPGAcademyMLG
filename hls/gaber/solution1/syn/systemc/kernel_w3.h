// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __kernel_w3_H__
#define __kernel_w3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct kernel_w3_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 32;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(kernel_w3_ram) {
        ram[0] = "0b10111111111011010011100101110100";
        ram[1] = "0b00111111100000010101000001111100";
        ram[2] = "0b10111111010100010110010110101010";
        ram[3] = "0b00111111110010000001101001011101";
        ram[4] = "0b10111111011010111000001110010111";
        ram[5] = "0b10111111100000011111001111010101";
        ram[6] = "0b10111111011001000111011010111111";
        ram[7] = "0b01000000000000011011110110110110";
        ram[8] = "0b10111111100101011001111011110110";
        ram[9] = "0b00111111011101011100000111011001";
        ram[10] = "0b10111111011011000110100000100110";
        ram[11] = "0b10111101010011000100111011111001";
        ram[12] = "0b10111111011011101000001001110101";
        ram[13] = "0b10111111011100010111010111111111";
        ram[14] = "0b10111101100001100100001001010110";
        ram[15] = "0b00111111101101100110010110101010";
        ram[16] = "0b00111111011011100110100111101011";
        ram[17] = "0b00111101101011001101010100000001";
        ram[18] = "0b10111101100110100111111001110000";
        ram[19] = "0b10111110100111000010000011010001";
        ram[20] = "0b00111111011101100111010011110110";
        ram[21] = "0b00111110111010000000101010001101";
        ram[22] = "0b00111111010101010000101011110100";
        ram[23] = "0b10111101000110101010110001000000";
        ram[24] = "0b11000000000100000110100011101100";
        ram[25] = "0b00111111001010100101011011010000";
        ram[26] = "0b10111111101000001100000011111111";
        ram[27] = "0b00111111111110111000010001100011";
        ram[28] = "0b10111111101001001110001011100001";
        ram[29] = "0b10111110010101001100101001000001";
        ram[30] = "0b10111110010110001110010111010101";
        ram[31] = "0b01000000000111011001001110100110";


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


SC_MODULE(kernel_w3) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


kernel_w3_ram* meminst;


SC_CTOR(kernel_w3) {
meminst = new kernel_w3_ram("kernel_w3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~kernel_w3() {
    delete meminst;
}


};//endmodule
#endif
