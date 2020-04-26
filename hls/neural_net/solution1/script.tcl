############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project neural_net_HLS
set_top kernel
add_files neural_net_HLS/solution1/kernel.cpp
add_files neural_net_HLS/solution1/mylib.c
add_files neural_net_HLS/solution1/mylib.h
add_files -tb neural_net_HLS/solution1/testbench.cpp
open_solution "solution1"
set_part {xc7a35t-cpg236-1}
create_clock -period 10 -name default
config_sdx -target none
config_export -vivado_optimization_level 2 -vivado_phys_opt place -vivado_report_level 0
set_clock_uncertainty 12.5%
#source "./neural_net_HLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
