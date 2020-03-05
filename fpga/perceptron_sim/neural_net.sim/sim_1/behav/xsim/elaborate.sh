#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Sat Feb 29 12:48:32 CET 2020
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto c9250cb90ab34326824f2bada9e7301c --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot perceptron_sim_behav xil_defaultlib.perceptron_sim -log elaborate.log"
xelab -wto c9250cb90ab34326824f2bada9e7301c --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot perceptron_sim_behav xil_defaultlib.perceptron_sim -log elaborate.log
