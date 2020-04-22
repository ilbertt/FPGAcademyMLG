############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj
set_top fft_top
add_files fft_top.cpp
add_files -tb fft_tb.cpp
add_files -tb data/stimulus_00.dat
add_files -tb data/stimulus_00.res
open_solution "solution1"
set_part {xc7k160tfbg484-1}
create_clock -period 3.3 -name default
config_dataflow -default_channel fifo -fifo_depth 1
#source "./proj/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
