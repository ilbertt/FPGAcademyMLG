############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project gaber
add_files gaber/solution1/fft_top.cpp
add_files gaber/solution1/fft_top.h
add_files gaber/solution1/kernel.cpp
add_files gaber/solution1/mylib.c
add_files gaber/solution1/mylib.h
add_files -tb neural_net/solution1/testbench.cpp
add_files -tb fft_version2/solution1/python_scripts/test
open_solution "solution1"
set_part {xc7k70tfbv676-1}
create_clock -period 10 -name default
#source "./gaber/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
