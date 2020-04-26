############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fft
set_top fft_top
add_files fft/solution1/fft_top.cpp
add_files fft/solution1/fft_top.h
add_files -tb fft/solution1/.tcls/fft_tb.cpp
add_files -tb fft/solution1/.tcls/stimulus.dat
open_solution "solution1"
set_part {xc7a35t-cpg236-1}
create_clock -period 10 -name default
#source "./fft/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
