// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "fft_top.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic fft_top::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<9> fft_top::ap_const_lv9_0 = "000000000";
const sc_lv<32> fft_top::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_logic fft_top::ap_const_logic_1 = sc_dt::Log_1;
const sc_lv<16> fft_top::ap_const_lv16_0 = "0000000000000000";
const sc_lv<16> fft_top::ap_const_lv16_1 = "1";

fft_top::fft_top(sc_module_name name) : sc_module(name), mVcdFile(0) {
    dummy_proc_fe_U0 = new dummy_proc_fe("dummy_proc_fe_U0");
    dummy_proc_fe_U0->ap_clk(ap_clk);
    dummy_proc_fe_U0->ap_rst(ap_rst);
    dummy_proc_fe_U0->ap_start(dummy_proc_fe_U0_ap_start);
    dummy_proc_fe_U0->start_full_n(dummy_proc_fe_U0_start_full_n);
    dummy_proc_fe_U0->ap_done(dummy_proc_fe_U0_ap_done);
    dummy_proc_fe_U0->ap_continue(dummy_proc_fe_U0_ap_continue);
    dummy_proc_fe_U0->ap_idle(dummy_proc_fe_U0_ap_idle);
    dummy_proc_fe_U0->ap_ready(dummy_proc_fe_U0_ap_ready);
    dummy_proc_fe_U0->start_out(dummy_proc_fe_U0_start_out);
    dummy_proc_fe_U0->start_write(dummy_proc_fe_U0_start_write);
    dummy_proc_fe_U0->config_data_V_dout(fft_config_data_V_dout);
    dummy_proc_fe_U0->config_data_V_empty_n(fft_config_data_V_empty_n);
    dummy_proc_fe_U0->config_data_V_read(dummy_proc_fe_U0_config_data_V_read);
    dummy_proc_fe_U0->config_data_V_din(dummy_proc_fe_U0_config_data_V_din);
    dummy_proc_fe_U0->config_data_V_full_n(ap_var_for_const0);
    dummy_proc_fe_U0->config_data_V_write(dummy_proc_fe_U0_config_data_V_write);
    dummy_proc_fe_U0->in_r_dout(in_r_dout);
    dummy_proc_fe_U0->in_r_empty_n(in_r_empty_n);
    dummy_proc_fe_U0->in_r_read(dummy_proc_fe_U0_in_r_read);
    dummy_proc_fe_U0->out_r_din(dummy_proc_fe_U0_out_r_din);
    dummy_proc_fe_U0->out_r_full_n(xn_channel_full_n);
    dummy_proc_fe_U0->out_r_write(dummy_proc_fe_U0_out_r_write);
    fft_config1_U0 = new fft_config1_s("fft_config1_U0");
    fft_config1_U0->ap_clk(ap_clk);
    fft_config1_U0->ap_rst(ap_rst);
    fft_config1_U0->ap_start(fft_config1_U0_ap_start);
    fft_config1_U0->ap_ce(ap_var_for_const0);
    fft_config1_U0->ap_done(fft_config1_U0_ap_done);
    fft_config1_U0->ap_idle(fft_config1_U0_ap_idle);
    fft_config1_U0->ap_ready(fft_config1_U0_ap_ready);
    fft_config1_U0->ap_continue(fft_config1_U0_ap_continue);
    fft_config1_U0->xn_dout(xn_channel_dout);
    fft_config1_U0->xn_empty_n(xn_channel_empty_n);
    fft_config1_U0->xn_read(fft_config1_U0_xn_read);
    fft_config1_U0->xk_din(fft_config1_U0_xk_din);
    fft_config1_U0->xk_full_n(xk_channel_full_n);
    fft_config1_U0->xk_write(fft_config1_U0_xk_write);
    fft_config1_U0->status_data_V_din(fft_config1_U0_status_data_V_din);
    fft_config1_U0->status_data_V_full_n(ap_var_for_const0);
    fft_config1_U0->status_data_V_write(fft_config1_U0_status_data_V_write);
    fft_config1_U0->config_ch_data_V_dout(ap_var_for_const1);
    fft_config1_U0->config_ch_data_V_empty_n(ap_var_for_const0);
    fft_config1_U0->config_ch_data_V_read(fft_config1_U0_config_ch_data_V_read);
    dummy_proc_be_U0 = new dummy_proc_be("dummy_proc_be_U0");
    dummy_proc_be_U0->ap_clk(ap_clk);
    dummy_proc_be_U0->ap_rst(ap_rst);
    dummy_proc_be_U0->ap_start(dummy_proc_be_U0_ap_start);
    dummy_proc_be_U0->ap_done(dummy_proc_be_U0_ap_done);
    dummy_proc_be_U0->ap_continue(dummy_proc_be_U0_ap_continue);
    dummy_proc_be_U0->ap_idle(dummy_proc_be_U0_ap_idle);
    dummy_proc_be_U0->ap_ready(dummy_proc_be_U0_ap_ready);
    dummy_proc_be_U0->in_r_dout(xk_channel_dout);
    dummy_proc_be_U0->in_r_empty_n(xk_channel_empty_n);
    dummy_proc_be_U0->in_r_read(dummy_proc_be_U0_in_r_read);
    dummy_proc_be_U0->out_r_address0(dummy_proc_be_U0_out_r_address0);
    dummy_proc_be_U0->out_r_ce0(dummy_proc_be_U0_out_r_ce0);
    dummy_proc_be_U0->out_r_we0(dummy_proc_be_U0_out_r_we0);
    dummy_proc_be_U0->out_r_d0(dummy_proc_be_U0_out_r_d0);
    fft_config_data_V_U = new fifo_w16_d2_A("fft_config_data_V_U");
    fft_config_data_V_U->clk(ap_clk);
    fft_config_data_V_U->reset(ap_rst);
    fft_config_data_V_U->if_read_ce(ap_var_for_const0);
    fft_config_data_V_U->if_write_ce(ap_var_for_const0);
    fft_config_data_V_U->if_din(fft_config1_U0_config_ch_data_V_din);
    fft_config_data_V_U->if_full_n(fft_config_data_V_full_n);
    fft_config_data_V_U->if_write(fft_config1_U0_config_ch_data_V_write);
    fft_config_data_V_U->if_dout(fft_config_data_V_dout);
    fft_config_data_V_U->if_empty_n(fft_config_data_V_empty_n);
    fft_config_data_V_U->if_read(dummy_proc_fe_U0_config_data_V_read);
    xn_channel_U = new fifo_w32_d2048_A("xn_channel_U");
    xn_channel_U->clk(ap_clk);
    xn_channel_U->reset(ap_rst);
    xn_channel_U->if_read_ce(ap_var_for_const0);
    xn_channel_U->if_write_ce(ap_var_for_const0);
    xn_channel_U->if_din(dummy_proc_fe_U0_out_r_din);
    xn_channel_U->if_full_n(xn_channel_full_n);
    xn_channel_U->if_write(dummy_proc_fe_U0_out_r_write);
    xn_channel_U->if_dout(xn_channel_dout);
    xn_channel_U->if_empty_n(xn_channel_empty_n);
    xn_channel_U->if_read(fft_config1_U0_xn_read);
    xk_channel_U = new fifo_w32_d2048_A("xk_channel_U");
    xk_channel_U->clk(ap_clk);
    xk_channel_U->reset(ap_rst);
    xk_channel_U->if_read_ce(ap_var_for_const0);
    xk_channel_U->if_write_ce(ap_var_for_const0);
    xk_channel_U->if_din(fft_config1_U0_xk_din);
    xk_channel_U->if_full_n(xk_channel_full_n);
    xk_channel_U->if_write(fft_config1_U0_xk_write);
    xk_channel_U->if_dout(xk_channel_dout);
    xk_channel_U->if_empty_n(xk_channel_empty_n);
    xk_channel_U->if_read(dummy_proc_be_U0_in_r_read);
    start_for_fft_confYi_U = new start_for_fft_confYi("start_for_fft_confYi_U");
    start_for_fft_confYi_U->clk(ap_clk);
    start_for_fft_confYi_U->reset(ap_rst);
    start_for_fft_confYi_U->if_read_ce(ap_var_for_const0);
    start_for_fft_confYi_U->if_write_ce(ap_var_for_const0);
    start_for_fft_confYi_U->if_din(start_for_fft_config1_U0_din);
    start_for_fft_confYi_U->if_full_n(start_for_fft_config1_U0_full_n);
    start_for_fft_confYi_U->if_write(dummy_proc_fe_U0_start_write);
    start_for_fft_confYi_U->if_dout(start_for_fft_config1_U0_dout);
    start_for_fft_confYi_U->if_empty_n(start_for_fft_config1_U0_empty_n);
    start_for_fft_confYi_U->if_read(fft_config1_U0_ap_ready);
    start_for_dummy_pg8j_U = new start_for_dummy_pg8j("start_for_dummy_pg8j_U");
    start_for_dummy_pg8j_U->clk(ap_clk);
    start_for_dummy_pg8j_U->reset(ap_rst);
    start_for_dummy_pg8j_U->if_read_ce(ap_var_for_const0);
    start_for_dummy_pg8j_U->if_write_ce(ap_var_for_const0);
    start_for_dummy_pg8j_U->if_din(start_for_dummy_proc_be_U0_din);
    start_for_dummy_pg8j_U->if_full_n(start_for_dummy_proc_be_U0_full_n);
    start_for_dummy_pg8j_U->if_write(dummy_proc_fe_U0_start_write);
    start_for_dummy_pg8j_U->if_dout(start_for_dummy_proc_be_U0_dout);
    start_for_dummy_pg8j_U->if_empty_n(start_for_dummy_proc_be_U0_empty_n);
    start_for_dummy_pg8j_U->if_read(dummy_proc_be_U0_ap_ready);

    SC_METHOD(thread_ap_done);
    sensitive << ( dummy_proc_be_U0_ap_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( dummy_proc_fe_U0_ap_idle );
    sensitive << ( fft_config1_U0_ap_idle );
    sensitive << ( dummy_proc_be_U0_ap_idle );

    SC_METHOD(thread_ap_ready);
    sensitive << ( dummy_proc_fe_U0_ap_ready );

    SC_METHOD(thread_ap_sync_continue);
    sensitive << ( ap_continue );

    SC_METHOD(thread_ap_sync_done);
    sensitive << ( dummy_proc_be_U0_ap_done );

    SC_METHOD(thread_ap_sync_ready);
    sensitive << ( dummy_proc_fe_U0_ap_ready );

    SC_METHOD(thread_dummy_proc_be_U0_ap_continue);
    sensitive << ( ap_continue );

    SC_METHOD(thread_dummy_proc_be_U0_ap_start);
    sensitive << ( start_for_dummy_proc_be_U0_empty_n );

    SC_METHOD(thread_dummy_proc_be_U0_start_full_n);

    SC_METHOD(thread_dummy_proc_be_U0_start_write);

    SC_METHOD(thread_dummy_proc_fe_U0_ap_continue);

    SC_METHOD(thread_dummy_proc_fe_U0_ap_start);
    sensitive << ( ap_start );

    SC_METHOD(thread_dummy_proc_fe_U0_start_full_n);
    sensitive << ( start_for_fft_config1_U0_full_n );
    sensitive << ( start_for_dummy_proc_be_U0_full_n );

    SC_METHOD(thread_fft_config1_U0_ap_continue);

    SC_METHOD(thread_fft_config1_U0_ap_start);
    sensitive << ( start_for_fft_config1_U0_empty_n );

    SC_METHOD(thread_fft_config1_U0_config_ch_data_V_din);

    SC_METHOD(thread_fft_config1_U0_config_ch_data_V_full_n);
    sensitive << ( fft_config_data_V_full_n );

    SC_METHOD(thread_fft_config1_U0_config_ch_data_V_write);

    SC_METHOD(thread_fft_config1_U0_start_full_n);

    SC_METHOD(thread_fft_config1_U0_start_write);

    SC_METHOD(thread_in_r_read);
    sensitive << ( dummy_proc_fe_U0_in_r_read );

    SC_METHOD(thread_out_r_address0);
    sensitive << ( dummy_proc_be_U0_out_r_address0 );

    SC_METHOD(thread_out_r_address1);

    SC_METHOD(thread_out_r_ce0);
    sensitive << ( dummy_proc_be_U0_out_r_ce0 );

    SC_METHOD(thread_out_r_ce1);

    SC_METHOD(thread_out_r_d0);
    sensitive << ( dummy_proc_be_U0_out_r_d0 );

    SC_METHOD(thread_out_r_d1);

    SC_METHOD(thread_out_r_we0);
    sensitive << ( dummy_proc_be_U0_out_r_we0 );

    SC_METHOD(thread_out_r_we1);

    SC_METHOD(thread_start_for_dummy_proc_be_U0_din);

    SC_METHOD(thread_start_for_fft_config1_U0_din);

    SC_THREAD(thread_ap_var_for_const0);

    SC_THREAD(thread_ap_var_for_const1);

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "fft_top_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, in_r_dout, "(port)in_r_dout");
    sc_trace(mVcdFile, in_r_empty_n, "(port)in_r_empty_n");
    sc_trace(mVcdFile, in_r_read, "(port)in_r_read");
    sc_trace(mVcdFile, out_r_address0, "(port)out_r_address0");
    sc_trace(mVcdFile, out_r_ce0, "(port)out_r_ce0");
    sc_trace(mVcdFile, out_r_d0, "(port)out_r_d0");
    sc_trace(mVcdFile, out_r_q0, "(port)out_r_q0");
    sc_trace(mVcdFile, out_r_we0, "(port)out_r_we0");
    sc_trace(mVcdFile, out_r_address1, "(port)out_r_address1");
    sc_trace(mVcdFile, out_r_ce1, "(port)out_r_ce1");
    sc_trace(mVcdFile, out_r_d1, "(port)out_r_d1");
    sc_trace(mVcdFile, out_r_q1, "(port)out_r_q1");
    sc_trace(mVcdFile, out_r_we1, "(port)out_r_we1");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, dummy_proc_fe_U0_ap_start, "dummy_proc_fe_U0_ap_start");
    sc_trace(mVcdFile, dummy_proc_fe_U0_start_full_n, "dummy_proc_fe_U0_start_full_n");
    sc_trace(mVcdFile, dummy_proc_fe_U0_ap_done, "dummy_proc_fe_U0_ap_done");
    sc_trace(mVcdFile, dummy_proc_fe_U0_ap_continue, "dummy_proc_fe_U0_ap_continue");
    sc_trace(mVcdFile, dummy_proc_fe_U0_ap_idle, "dummy_proc_fe_U0_ap_idle");
    sc_trace(mVcdFile, dummy_proc_fe_U0_ap_ready, "dummy_proc_fe_U0_ap_ready");
    sc_trace(mVcdFile, dummy_proc_fe_U0_start_out, "dummy_proc_fe_U0_start_out");
    sc_trace(mVcdFile, dummy_proc_fe_U0_start_write, "dummy_proc_fe_U0_start_write");
    sc_trace(mVcdFile, dummy_proc_fe_U0_config_data_V_read, "dummy_proc_fe_U0_config_data_V_read");
    sc_trace(mVcdFile, dummy_proc_fe_U0_config_data_V_din, "dummy_proc_fe_U0_config_data_V_din");
    sc_trace(mVcdFile, dummy_proc_fe_U0_config_data_V_write, "dummy_proc_fe_U0_config_data_V_write");
    sc_trace(mVcdFile, dummy_proc_fe_U0_in_r_read, "dummy_proc_fe_U0_in_r_read");
    sc_trace(mVcdFile, dummy_proc_fe_U0_out_r_din, "dummy_proc_fe_U0_out_r_din");
    sc_trace(mVcdFile, dummy_proc_fe_U0_out_r_write, "dummy_proc_fe_U0_out_r_write");
    sc_trace(mVcdFile, fft_config1_U0_ap_start, "fft_config1_U0_ap_start");
    sc_trace(mVcdFile, fft_config1_U0_ap_done, "fft_config1_U0_ap_done");
    sc_trace(mVcdFile, fft_config1_U0_ap_idle, "fft_config1_U0_ap_idle");
    sc_trace(mVcdFile, fft_config1_U0_ap_ready, "fft_config1_U0_ap_ready");
    sc_trace(mVcdFile, fft_config1_U0_ap_continue, "fft_config1_U0_ap_continue");
    sc_trace(mVcdFile, fft_config1_U0_xn_read, "fft_config1_U0_xn_read");
    sc_trace(mVcdFile, fft_config1_U0_xk_din, "fft_config1_U0_xk_din");
    sc_trace(mVcdFile, fft_config1_U0_xk_write, "fft_config1_U0_xk_write");
    sc_trace(mVcdFile, fft_config1_U0_status_data_V_din, "fft_config1_U0_status_data_V_din");
    sc_trace(mVcdFile, fft_config1_U0_status_data_V_write, "fft_config1_U0_status_data_V_write");
    sc_trace(mVcdFile, fft_config1_U0_config_ch_data_V_read, "fft_config1_U0_config_ch_data_V_read");
    sc_trace(mVcdFile, dummy_proc_be_U0_ap_start, "dummy_proc_be_U0_ap_start");
    sc_trace(mVcdFile, dummy_proc_be_U0_ap_done, "dummy_proc_be_U0_ap_done");
    sc_trace(mVcdFile, dummy_proc_be_U0_ap_continue, "dummy_proc_be_U0_ap_continue");
    sc_trace(mVcdFile, dummy_proc_be_U0_ap_idle, "dummy_proc_be_U0_ap_idle");
    sc_trace(mVcdFile, dummy_proc_be_U0_ap_ready, "dummy_proc_be_U0_ap_ready");
    sc_trace(mVcdFile, dummy_proc_be_U0_in_r_read, "dummy_proc_be_U0_in_r_read");
    sc_trace(mVcdFile, dummy_proc_be_U0_out_r_address0, "dummy_proc_be_U0_out_r_address0");
    sc_trace(mVcdFile, dummy_proc_be_U0_out_r_ce0, "dummy_proc_be_U0_out_r_ce0");
    sc_trace(mVcdFile, dummy_proc_be_U0_out_r_we0, "dummy_proc_be_U0_out_r_we0");
    sc_trace(mVcdFile, dummy_proc_be_U0_out_r_d0, "dummy_proc_be_U0_out_r_d0");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, fft_config_data_V_full_n, "fft_config_data_V_full_n");
    sc_trace(mVcdFile, fft_config_data_V_dout, "fft_config_data_V_dout");
    sc_trace(mVcdFile, fft_config_data_V_empty_n, "fft_config_data_V_empty_n");
    sc_trace(mVcdFile, fft_config1_U0_config_ch_data_V_full_n, "fft_config1_U0_config_ch_data_V_full_n");
    sc_trace(mVcdFile, fft_config1_U0_config_ch_data_V_write, "fft_config1_U0_config_ch_data_V_write");
    sc_trace(mVcdFile, fft_config1_U0_config_ch_data_V_din, "fft_config1_U0_config_ch_data_V_din");
    sc_trace(mVcdFile, xn_channel_full_n, "xn_channel_full_n");
    sc_trace(mVcdFile, xn_channel_dout, "xn_channel_dout");
    sc_trace(mVcdFile, xn_channel_empty_n, "xn_channel_empty_n");
    sc_trace(mVcdFile, xk_channel_full_n, "xk_channel_full_n");
    sc_trace(mVcdFile, xk_channel_dout, "xk_channel_dout");
    sc_trace(mVcdFile, xk_channel_empty_n, "xk_channel_empty_n");
    sc_trace(mVcdFile, ap_sync_done, "ap_sync_done");
    sc_trace(mVcdFile, ap_sync_ready, "ap_sync_ready");
    sc_trace(mVcdFile, start_for_fft_config1_U0_din, "start_for_fft_config1_U0_din");
    sc_trace(mVcdFile, start_for_fft_config1_U0_full_n, "start_for_fft_config1_U0_full_n");
    sc_trace(mVcdFile, start_for_fft_config1_U0_dout, "start_for_fft_config1_U0_dout");
    sc_trace(mVcdFile, start_for_fft_config1_U0_empty_n, "start_for_fft_config1_U0_empty_n");
    sc_trace(mVcdFile, start_for_dummy_proc_be_U0_din, "start_for_dummy_proc_be_U0_din");
    sc_trace(mVcdFile, start_for_dummy_proc_be_U0_full_n, "start_for_dummy_proc_be_U0_full_n");
    sc_trace(mVcdFile, start_for_dummy_proc_be_U0_dout, "start_for_dummy_proc_be_U0_dout");
    sc_trace(mVcdFile, start_for_dummy_proc_be_U0_empty_n, "start_for_dummy_proc_be_U0_empty_n");
    sc_trace(mVcdFile, fft_config1_U0_start_full_n, "fft_config1_U0_start_full_n");
    sc_trace(mVcdFile, fft_config1_U0_start_write, "fft_config1_U0_start_write");
    sc_trace(mVcdFile, dummy_proc_be_U0_start_full_n, "dummy_proc_be_U0_start_full_n");
    sc_trace(mVcdFile, dummy_proc_be_U0_start_write, "dummy_proc_be_U0_start_write");
#endif

    }
}

fft_top::~fft_top() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete dummy_proc_fe_U0;
    delete fft_config1_U0;
    delete dummy_proc_be_U0;
    delete fft_config_data_V_U;
    delete xn_channel_U;
    delete xk_channel_U;
    delete start_for_fft_confYi_U;
    delete start_for_dummy_pg8j_U;
}

void fft_top::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void fft_top::thread_ap_var_for_const1() {
    ap_var_for_const1 = ap_const_lv16_0;
}

void fft_top::thread_ap_done() {
    ap_done = dummy_proc_be_U0_ap_done.read();
}

void fft_top::thread_ap_idle() {
    ap_idle = (dummy_proc_fe_U0_ap_idle.read() & fft_config1_U0_ap_idle.read() & dummy_proc_be_U0_ap_idle.read());
}

void fft_top::thread_ap_ready() {
    ap_ready = dummy_proc_fe_U0_ap_ready.read();
}

void fft_top::thread_ap_sync_continue() {
    ap_sync_continue = ap_continue.read();
}

void fft_top::thread_ap_sync_done() {
    ap_sync_done = dummy_proc_be_U0_ap_done.read();
}

void fft_top::thread_ap_sync_ready() {
    ap_sync_ready = dummy_proc_fe_U0_ap_ready.read();
}

void fft_top::thread_dummy_proc_be_U0_ap_continue() {
    dummy_proc_be_U0_ap_continue = ap_continue.read();
}

void fft_top::thread_dummy_proc_be_U0_ap_start() {
    dummy_proc_be_U0_ap_start = start_for_dummy_proc_be_U0_empty_n.read();
}

void fft_top::thread_dummy_proc_be_U0_start_full_n() {
    dummy_proc_be_U0_start_full_n = ap_const_logic_1;
}

void fft_top::thread_dummy_proc_be_U0_start_write() {
    dummy_proc_be_U0_start_write = ap_const_logic_0;
}

void fft_top::thread_dummy_proc_fe_U0_ap_continue() {
    dummy_proc_fe_U0_ap_continue = ap_const_logic_1;
}

void fft_top::thread_dummy_proc_fe_U0_ap_start() {
    dummy_proc_fe_U0_ap_start = ap_start.read();
}

void fft_top::thread_dummy_proc_fe_U0_start_full_n() {
    dummy_proc_fe_U0_start_full_n = (start_for_fft_config1_U0_full_n.read() & start_for_dummy_proc_be_U0_full_n.read());
}

void fft_top::thread_fft_config1_U0_ap_continue() {
    fft_config1_U0_ap_continue = ap_const_logic_1;
}

void fft_top::thread_fft_config1_U0_ap_start() {
    fft_config1_U0_ap_start = start_for_fft_config1_U0_empty_n.read();
}

void fft_top::thread_fft_config1_U0_config_ch_data_V_din() {
    fft_config1_U0_config_ch_data_V_din = ap_const_lv16_0;
}

void fft_top::thread_fft_config1_U0_config_ch_data_V_full_n() {
    fft_config1_U0_config_ch_data_V_full_n = fft_config_data_V_full_n.read();
}

void fft_top::thread_fft_config1_U0_config_ch_data_V_write() {
    fft_config1_U0_config_ch_data_V_write = ap_const_logic_0;
}

void fft_top::thread_fft_config1_U0_start_full_n() {
    fft_config1_U0_start_full_n = ap_const_logic_1;
}

void fft_top::thread_fft_config1_U0_start_write() {
    fft_config1_U0_start_write = ap_const_logic_0;
}

void fft_top::thread_in_r_read() {
    in_r_read = dummy_proc_fe_U0_in_r_read.read();
}

void fft_top::thread_out_r_address0() {
    out_r_address0 = dummy_proc_be_U0_out_r_address0.read();
}

void fft_top::thread_out_r_address1() {
    out_r_address1 = ap_const_lv9_0;
}

void fft_top::thread_out_r_ce0() {
    out_r_ce0 = dummy_proc_be_U0_out_r_ce0.read();
}

void fft_top::thread_out_r_ce1() {
    out_r_ce1 = ap_const_logic_0;
}

void fft_top::thread_out_r_d0() {
    out_r_d0 = dummy_proc_be_U0_out_r_d0.read();
}

void fft_top::thread_out_r_d1() {
    out_r_d1 = ap_const_lv32_0;
}

void fft_top::thread_out_r_we0() {
    out_r_we0 = dummy_proc_be_U0_out_r_we0.read();
}

void fft_top::thread_out_r_we1() {
    out_r_we1 = ap_const_logic_0;
}

void fft_top::thread_start_for_dummy_proc_be_U0_din() {
    start_for_dummy_proc_be_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void fft_top::thread_start_for_fft_config1_U0_din() {
    start_for_fft_config1_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

}

