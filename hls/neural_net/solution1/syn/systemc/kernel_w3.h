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
        ram[0] = "0b00111111100110100111011010110000";
        ram[1] = "0b10111110001011101000010011010010";
        ram[2] = "0b10111111100111111100100000001100";
        ram[3] = "0b10111110101100101101111001100101";
        ram[4] = "0b10111111101001100101111010111000";
        ram[5] = "0b00111111000111011110001100010101";
        ram[6] = "0b10111111101010001111100100000011";
        ram[7] = "0b00111111101001001010011000100000";
        ram[8] = "0b00111111100100110101010001000101";
        ram[9] = "0b10111111001000010010000110100100";
        ram[10] = "0b10111111101011011110011011100000";
        ram[11] = "0b10111110100100101011100000011010";
        ram[12] = "0b10111111101011000101011010100111";
        ram[13] = "0b10111100111000001100011111001000";
        ram[14] = "0b10111111100011110011010101010001";
        ram[15] = "0b00111111101100010001100110000010";
        ram[16] = "0b00111111010001110110010110000010";
        ram[17] = "0b10111101000001000001110010100010";
        ram[18] = "0b10111111101101100010000011110001";
        ram[19] = "0b00111110111011010010101010010011";
        ram[20] = "0b10111110111011100000100110000011";
        ram[21] = "0b10111110101110000110001011010101";
        ram[22] = "0b10111111101111101111001110110101";
        ram[23] = "0b00111111110000100110100100100110";
        ram[24] = "0b11000000001010101001011001011101";
        ram[25] = "0b10111110111010000000011010100011";
        ram[26] = "0b00111111000100111110010111010111";
        ram[27] = "0b10111110101010000001001100111111";
        ram[28] = "0b01000000000011001000010001111010";
        ram[29] = "0b10111111011001100001100011111110";
        ram[30] = "0b00111111110100010000011000111111";
        ram[31] = "0b11000000010000110010111110000111";


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
