// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "op"
#define AUTOTB_TVIN_op  "../tv/cdatafile/c.kernel.autotvin_op.dat"
// wrapc file define: "res"
#define AUTOTB_TVOUT_res  "../tv/cdatafile/c.kernel.autotvout_res.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "res"
#define AUTOTB_TVOUT_PC_res  "../tv/rtldatafile/rtl.kernel.autotvout_res.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			op_depth = 0;
			res_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{op " << op_depth << "}\n";
			total_list << "{res " << res_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int op_depth;
		int res_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void kernel (
float* op,
bool* res);

void AESL_WRAP_kernel (
float* op,
bool* res)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "res"
		aesl_fh.read(AUTOTB_TVOUT_PC_res, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_res, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_res, AESL_token); // data

			sc_bv<1> *res_pc_buffer = new sc_bv<1>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'res', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'res', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					res_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_res, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_res))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: res
				{
					// bitslice(0, 0)
					// {
						// celement: res(0, 0)
						// {
							sc_lv<1>* res_lv0_0_0_1 = new sc_lv<1>[1];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: res(0, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(res[0]) != NULL) // check the null address if the c port is array or others
								{
									res_lv0_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(res_pc_buffer[hls_map_index].range(0, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: res(0, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : res[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : res[0]
								// output_left_conversion : res[i_0]
								// output_type_conversion : (res_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(res[0]) != NULL) // check the null address if the c port is array or others
								{
									res[i_0] = (res_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] res_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "op"
		char* tvin_op = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_op);

		// "res"
		char* tvout_res = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_res);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_op, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_op, tvin_op);

		sc_bv<32>* op_tvin_wrapc_buffer = new sc_bv<32>[2048];

		// RTL Name: op
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: op(31, 0)
				{
					// carray: (0) => (2047) @ (1)
					for (int i_0 = 0; i_0 <= 2047; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : op[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : op[0]
						// regulate_c_name       : op
						// input_type_conversion : *(int*)&op[i_0]
						if (&(op[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> op_tmp_mem;
							op_tmp_mem = *(int*)&op[i_0];
							op_tvin_wrapc_buffer[hls_map_index].range(31, 0) = op_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 2048; i++)
		{
			sprintf(tvin_op, "%s\n", (op_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_op, tvin_op);
		}

		tcl_file.set_num(2048, &tcl_file.op_depth);
		sprintf(tvin_op, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_op, tvin_op);

		// release memory allocation
		delete [] op_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		kernel(op, res);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_res, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_res, tvout_res);

		sc_bv<1>* res_tvout_wrapc_buffer = new sc_bv<1>[1];

		// RTL Name: res
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: res(0, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : res[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : res[0]
						// regulate_c_name       : res
						// input_type_conversion : res[i_0]
						if (&(res[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> res_tmp_mem;
							res_tmp_mem = res[i_0];
							res_tvout_wrapc_buffer[hls_map_index].range(0, 0) = res_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_res, "%s\n", (res_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_res, tvout_res);
		}

		tcl_file.set_num(1, &tcl_file.res_depth);
		sprintf(tvout_res, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_res, tvout_res);

		// release memory allocation
		delete [] res_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "op"
		delete [] tvin_op;
		// release memory allocation: "res"
		delete [] tvout_res;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

