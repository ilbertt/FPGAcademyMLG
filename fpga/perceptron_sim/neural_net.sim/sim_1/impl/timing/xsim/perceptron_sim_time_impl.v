// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu Feb 27 20:25:30 2020
// Host        : gigo-MacBookPro running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/gigo/Vivado/Projects/neural_net/neural_net.sim/sim_1/impl/timing/xsim/perceptron_sim_time_impl.v
// Design      : perceptron
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "e437b442" *) 
(* NotValidForBitStream *)
module perceptron
   (in1,
    in2,
    theta0,
    theta1,
    theta2,
    res);
  input [15:0]in1;
  input [15:0]in2;
  input [15:0]theta0;
  input [15:0]theta1;
  input [15:0]theta2;
  output res;

  wire [15:0]in1;
  wire [15:0]in1_IBUF;
  wire [15:0]in2;
  wire [15:0]in2_IBUF;
  wire res;
  wire res_OBUF;
  wire res_OBUF_inst_i_10_n_0;
  wire res_OBUF_inst_i_11_n_0;
  wire res_OBUF_inst_i_12_n_0;
  wire res_OBUF_inst_i_13_n_0;
  wire res_OBUF_inst_i_14_n_0;
  wire res_OBUF_inst_i_15_n_0;
  wire res_OBUF_inst_i_16_n_0;
  wire res_OBUF_inst_i_17_n_0;
  wire res_OBUF_inst_i_18_n_0;
  wire res_OBUF_inst_i_19_n_0;
  wire res_OBUF_inst_i_21_n_0;
  wire res_OBUF_inst_i_22_n_0;
  wire res_OBUF_inst_i_23_n_0;
  wire res_OBUF_inst_i_24_n_0;
  wire res_OBUF_inst_i_25_n_0;
  wire res_OBUF_inst_i_26_n_0;
  wire res_OBUF_inst_i_27_n_0;
  wire res_OBUF_inst_i_28_n_0;
  wire res_OBUF_inst_i_29_n_0;
  wire res_OBUF_inst_i_2_n_0;
  wire res_OBUF_inst_i_30_n_0;
  wire res_OBUF_inst_i_31_n_0;
  wire res_OBUF_inst_i_32_n_0;
  wire res_OBUF_inst_i_33_n_0;
  wire res_OBUF_inst_i_34_n_0;
  wire res_OBUF_inst_i_35_n_0;
  wire res_OBUF_inst_i_36_n_0;
  wire res_OBUF_inst_i_37_n_0;
  wire res_OBUF_inst_i_38_n_0;
  wire res_OBUF_inst_i_39_n_0;
  wire res_OBUF_inst_i_3_n_0;
  wire res_OBUF_inst_i_40_n_0;
  wire res_OBUF_inst_i_41_n_0;
  wire res_OBUF_inst_i_42_n_0;
  wire res_OBUF_inst_i_43_n_0;
  wire res_OBUF_inst_i_44_n_0;
  wire res_OBUF_inst_i_45_n_0;
  wire res_OBUF_inst_i_46_n_0;
  wire res_OBUF_inst_i_47_n_0;
  wire res_OBUF_inst_i_48_n_0;
  wire res_OBUF_inst_i_49_n_0;
  wire res_OBUF_inst_i_4_n_0;
  wire res_OBUF_inst_i_50_n_0;
  wire res_OBUF_inst_i_51_n_0;
  wire res_OBUF_inst_i_52_n_0;
  wire res_OBUF_inst_i_53_n_0;
  wire res_OBUF_inst_i_54_n_0;
  wire res_OBUF_inst_i_55_n_0;
  wire res_OBUF_inst_i_56_n_0;
  wire res_OBUF_inst_i_57_n_0;
  wire res_OBUF_inst_i_58_n_0;
  wire res_OBUF_inst_i_59_n_0;
  wire res_OBUF_inst_i_5_n_0;
  wire res_OBUF_inst_i_60_n_0;
  wire res_OBUF_inst_i_61_n_0;
  wire res_OBUF_inst_i_62_n_0;
  wire res_OBUF_inst_i_63_n_0;
  wire res_OBUF_inst_i_64_n_0;
  wire res_OBUF_inst_i_65_n_0;
  wire res_OBUF_inst_i_66_n_0;
  wire res_OBUF_inst_i_67_n_0;
  wire res_OBUF_inst_i_68_n_0;
  wire res_OBUF_inst_i_69_n_0;
  wire res_OBUF_inst_i_6_n_0;
  wire res_OBUF_inst_i_70_n_0;
  wire res_OBUF_inst_i_71_n_0;
  wire res_OBUF_inst_i_72_n_0;
  wire res_OBUF_inst_i_73_n_0;
  wire res_OBUF_inst_i_74_n_0;
  wire res_OBUF_inst_i_75_n_0;
  wire res_OBUF_inst_i_76_n_0;
  wire res_OBUF_inst_i_77_n_0;
  wire res_OBUF_inst_i_7_n_0;
  wire res_OBUF_inst_i_8_n_0;
  wire res_OBUF_inst_i_9_n_0;
  wire s1_n_106;
  wire s1_n_107;
  wire s1_n_108;
  wire s1_n_109;
  wire s1_n_110;
  wire s1_n_111;
  wire s1_n_112;
  wire s1_n_113;
  wire s1_n_114;
  wire s1_n_115;
  wire s1_n_116;
  wire s1_n_117;
  wire s1_n_118;
  wire s1_n_119;
  wire s1_n_120;
  wire s1_n_121;
  wire s1_n_122;
  wire s1_n_123;
  wire s1_n_124;
  wire s1_n_125;
  wire s1_n_126;
  wire s1_n_127;
  wire s1_n_128;
  wire s1_n_129;
  wire s1_n_130;
  wire s1_n_131;
  wire s1_n_132;
  wire s1_n_133;
  wire s1_n_134;
  wire s1_n_135;
  wire s1_n_136;
  wire s1_n_137;
  wire s1_n_138;
  wire s1_n_139;
  wire s1_n_140;
  wire s1_n_141;
  wire s1_n_142;
  wire s1_n_143;
  wire s1_n_144;
  wire s1_n_145;
  wire s1_n_146;
  wire s1_n_147;
  wire s1_n_148;
  wire s1_n_149;
  wire s1_n_150;
  wire s1_n_151;
  wire s1_n_152;
  wire s1_n_153;
  wire [31:0]s__0;
  wire s_n_100;
  wire s_n_101;
  wire s_n_102;
  wire s_n_103;
  wire s_n_104;
  wire s_n_105;
  wire s_n_74;
  wire s_n_75;
  wire s_n_76;
  wire s_n_77;
  wire s_n_78;
  wire s_n_79;
  wire s_n_80;
  wire s_n_81;
  wire s_n_82;
  wire s_n_83;
  wire s_n_84;
  wire s_n_85;
  wire s_n_86;
  wire s_n_87;
  wire s_n_88;
  wire s_n_89;
  wire s_n_90;
  wire s_n_91;
  wire s_n_92;
  wire s_n_93;
  wire s_n_94;
  wire s_n_95;
  wire s_n_96;
  wire s_n_97;
  wire s_n_98;
  wire s_n_99;
  wire [15:0]theta0;
  wire [15:0]theta0_IBUF;
  wire [15:0]theta1;
  wire [15:0]theta1_IBUF;
  wire [15:0]theta2;
  wire [15:0]theta2_IBUF;
  wire [2:0]NLW_res_OBUF_inst_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_res_OBUF_inst_i_1_O_UNCONNECTED;
  wire [2:0]NLW_res_OBUF_inst_i_11_CO_UNCONNECTED;
  wire [3:0]NLW_res_OBUF_inst_i_11_O_UNCONNECTED;
  wire [2:0]NLW_res_OBUF_inst_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_res_OBUF_inst_i_2_O_UNCONNECTED;
  wire [3:0]NLW_res_OBUF_inst_i_20_CO_UNCONNECTED;
  wire [2:0]NLW_res_OBUF_inst_i_21_CO_UNCONNECTED;
  wire [2:0]NLW_res_OBUF_inst_i_22_CO_UNCONNECTED;
  wire [3:0]NLW_res_OBUF_inst_i_22_O_UNCONNECTED;
  wire [2:0]NLW_res_OBUF_inst_i_31_CO_UNCONNECTED;
  wire [2:0]NLW_res_OBUF_inst_i_32_CO_UNCONNECTED;
  wire [2:0]NLW_res_OBUF_inst_i_49_CO_UNCONNECTED;
  wire [2:0]NLW_res_OBUF_inst_i_50_CO_UNCONNECTED;
  wire [2:0]NLW_res_OBUF_inst_i_59_CO_UNCONNECTED;
  wire [2:0]NLW_res_OBUF_inst_i_60_CO_UNCONNECTED;
  wire NLW_s_CARRYCASCOUT_UNCONNECTED;
  wire NLW_s_MULTSIGNOUT_UNCONNECTED;
  wire NLW_s_OVERFLOW_UNCONNECTED;
  wire NLW_s_PATTERNBDETECT_UNCONNECTED;
  wire NLW_s_PATTERNDETECT_UNCONNECTED;
  wire NLW_s_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_s_ACOUT_UNCONNECTED;
  wire [17:0]NLW_s_BCOUT_UNCONNECTED;
  wire [3:0]NLW_s_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_s_P_UNCONNECTED;
  wire [47:0]NLW_s_PCOUT_UNCONNECTED;
  wire NLW_s1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_s1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_s1_OVERFLOW_UNCONNECTED;
  wire NLW_s1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_s1_PATTERNDETECT_UNCONNECTED;
  wire NLW_s1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_s1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_s1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_s1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_s1_P_UNCONNECTED;

initial begin
 $sdf_annotate("perceptron_sim_time_impl.sdf",,,,"tool_control");
end
  IBUF \in1_IBUF[0]_inst 
       (.I(in1[0]),
        .O(in1_IBUF[0]));
  IBUF \in1_IBUF[10]_inst 
       (.I(in1[10]),
        .O(in1_IBUF[10]));
  IBUF \in1_IBUF[11]_inst 
       (.I(in1[11]),
        .O(in1_IBUF[11]));
  IBUF \in1_IBUF[12]_inst 
       (.I(in1[12]),
        .O(in1_IBUF[12]));
  IBUF \in1_IBUF[13]_inst 
       (.I(in1[13]),
        .O(in1_IBUF[13]));
  IBUF \in1_IBUF[14]_inst 
       (.I(in1[14]),
        .O(in1_IBUF[14]));
  IBUF \in1_IBUF[15]_inst 
       (.I(in1[15]),
        .O(in1_IBUF[15]));
  IBUF \in1_IBUF[1]_inst 
       (.I(in1[1]),
        .O(in1_IBUF[1]));
  IBUF \in1_IBUF[2]_inst 
       (.I(in1[2]),
        .O(in1_IBUF[2]));
  IBUF \in1_IBUF[3]_inst 
       (.I(in1[3]),
        .O(in1_IBUF[3]));
  IBUF \in1_IBUF[4]_inst 
       (.I(in1[4]),
        .O(in1_IBUF[4]));
  IBUF \in1_IBUF[5]_inst 
       (.I(in1[5]),
        .O(in1_IBUF[5]));
  IBUF \in1_IBUF[6]_inst 
       (.I(in1[6]),
        .O(in1_IBUF[6]));
  IBUF \in1_IBUF[7]_inst 
       (.I(in1[7]),
        .O(in1_IBUF[7]));
  IBUF \in1_IBUF[8]_inst 
       (.I(in1[8]),
        .O(in1_IBUF[8]));
  IBUF \in1_IBUF[9]_inst 
       (.I(in1[9]),
        .O(in1_IBUF[9]));
  IBUF \in2_IBUF[0]_inst 
       (.I(in2[0]),
        .O(in2_IBUF[0]));
  IBUF \in2_IBUF[10]_inst 
       (.I(in2[10]),
        .O(in2_IBUF[10]));
  IBUF \in2_IBUF[11]_inst 
       (.I(in2[11]),
        .O(in2_IBUF[11]));
  IBUF \in2_IBUF[12]_inst 
       (.I(in2[12]),
        .O(in2_IBUF[12]));
  IBUF \in2_IBUF[13]_inst 
       (.I(in2[13]),
        .O(in2_IBUF[13]));
  IBUF \in2_IBUF[14]_inst 
       (.I(in2[14]),
        .O(in2_IBUF[14]));
  IBUF \in2_IBUF[15]_inst 
       (.I(in2[15]),
        .O(in2_IBUF[15]));
  IBUF \in2_IBUF[1]_inst 
       (.I(in2[1]),
        .O(in2_IBUF[1]));
  IBUF \in2_IBUF[2]_inst 
       (.I(in2[2]),
        .O(in2_IBUF[2]));
  IBUF \in2_IBUF[3]_inst 
       (.I(in2[3]),
        .O(in2_IBUF[3]));
  IBUF \in2_IBUF[4]_inst 
       (.I(in2[4]),
        .O(in2_IBUF[4]));
  IBUF \in2_IBUF[5]_inst 
       (.I(in2[5]),
        .O(in2_IBUF[5]));
  IBUF \in2_IBUF[6]_inst 
       (.I(in2[6]),
        .O(in2_IBUF[6]));
  IBUF \in2_IBUF[7]_inst 
       (.I(in2[7]),
        .O(in2_IBUF[7]));
  IBUF \in2_IBUF[8]_inst 
       (.I(in2[8]),
        .O(in2_IBUF[8]));
  IBUF \in2_IBUF[9]_inst 
       (.I(in2[9]),
        .O(in2_IBUF[9]));
  OBUF res_OBUF_inst
       (.I(res_OBUF),
        .O(res));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_OBUF_inst_i_1
       (.CI(res_OBUF_inst_i_2_n_0),
        .CO({res_OBUF,NLW_res_OBUF_inst_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_OBUF_inst_i_3_n_0,res_OBUF_inst_i_4_n_0,res_OBUF_inst_i_5_n_0,res_OBUF_inst_i_6_n_0}),
        .O(NLW_res_OBUF_inst_i_1_O_UNCONNECTED[3:0]),
        .S({res_OBUF_inst_i_7_n_0,res_OBUF_inst_i_8_n_0,res_OBUF_inst_i_9_n_0,res_OBUF_inst_i_10_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_10
       (.I0(s__0[24]),
        .I1(s__0[25]),
        .O(res_OBUF_inst_i_10_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_OBUF_inst_i_11
       (.CI(res_OBUF_inst_i_22_n_0),
        .CO({res_OBUF_inst_i_11_n_0,NLW_res_OBUF_inst_i_11_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_OBUF_inst_i_23_n_0,res_OBUF_inst_i_24_n_0,res_OBUF_inst_i_25_n_0,res_OBUF_inst_i_26_n_0}),
        .O(NLW_res_OBUF_inst_i_11_O_UNCONNECTED[3:0]),
        .S({res_OBUF_inst_i_27_n_0,res_OBUF_inst_i_28_n_0,res_OBUF_inst_i_29_n_0,res_OBUF_inst_i_30_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    res_OBUF_inst_i_12
       (.I0(s__0[22]),
        .I1(s__0[23]),
        .O(res_OBUF_inst_i_12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    res_OBUF_inst_i_13
       (.I0(s__0[20]),
        .I1(s__0[21]),
        .O(res_OBUF_inst_i_13_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    res_OBUF_inst_i_14
       (.I0(s__0[18]),
        .I1(s__0[19]),
        .O(res_OBUF_inst_i_14_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    res_OBUF_inst_i_15
       (.I0(s__0[16]),
        .I1(s__0[17]),
        .O(res_OBUF_inst_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_16
       (.I0(s__0[22]),
        .I1(s__0[23]),
        .O(res_OBUF_inst_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_17
       (.I0(s__0[20]),
        .I1(s__0[21]),
        .O(res_OBUF_inst_i_17_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_18
       (.I0(s__0[18]),
        .I1(s__0[19]),
        .O(res_OBUF_inst_i_18_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_19
       (.I0(s__0[16]),
        .I1(s__0[17]),
        .O(res_OBUF_inst_i_19_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_OBUF_inst_i_2
       (.CI(res_OBUF_inst_i_11_n_0),
        .CO({res_OBUF_inst_i_2_n_0,NLW_res_OBUF_inst_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_OBUF_inst_i_12_n_0,res_OBUF_inst_i_13_n_0,res_OBUF_inst_i_14_n_0,res_OBUF_inst_i_15_n_0}),
        .O(NLW_res_OBUF_inst_i_2_O_UNCONNECTED[3:0]),
        .S({res_OBUF_inst_i_16_n_0,res_OBUF_inst_i_17_n_0,res_OBUF_inst_i_18_n_0,res_OBUF_inst_i_19_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_OBUF_inst_i_20
       (.CI(res_OBUF_inst_i_21_n_0),
        .CO(NLW_res_OBUF_inst_i_20_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,s_n_76,s_n_77,s_n_78}),
        .O(s__0[31:28]),
        .S({res_OBUF_inst_i_33_n_0,res_OBUF_inst_i_34_n_0,res_OBUF_inst_i_35_n_0,res_OBUF_inst_i_36_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_OBUF_inst_i_21
       (.CI(res_OBUF_inst_i_31_n_0),
        .CO({res_OBUF_inst_i_21_n_0,NLW_res_OBUF_inst_i_21_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({s_n_79,s_n_80,s_n_81,s_n_82}),
        .O(s__0[27:24]),
        .S({res_OBUF_inst_i_37_n_0,res_OBUF_inst_i_38_n_0,res_OBUF_inst_i_39_n_0,res_OBUF_inst_i_40_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_OBUF_inst_i_22
       (.CI(1'b0),
        .CO({res_OBUF_inst_i_22_n_0,NLW_res_OBUF_inst_i_22_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_OBUF_inst_i_41_n_0,res_OBUF_inst_i_42_n_0,res_OBUF_inst_i_43_n_0,res_OBUF_inst_i_44_n_0}),
        .O(NLW_res_OBUF_inst_i_22_O_UNCONNECTED[3:0]),
        .S({res_OBUF_inst_i_45_n_0,res_OBUF_inst_i_46_n_0,res_OBUF_inst_i_47_n_0,res_OBUF_inst_i_48_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    res_OBUF_inst_i_23
       (.I0(s__0[14]),
        .I1(s__0[15]),
        .O(res_OBUF_inst_i_23_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    res_OBUF_inst_i_24
       (.I0(s__0[12]),
        .I1(s__0[13]),
        .O(res_OBUF_inst_i_24_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    res_OBUF_inst_i_25
       (.I0(s__0[10]),
        .I1(s__0[11]),
        .O(res_OBUF_inst_i_25_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    res_OBUF_inst_i_26
       (.I0(s__0[8]),
        .I1(s__0[9]),
        .O(res_OBUF_inst_i_26_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_27
       (.I0(s__0[14]),
        .I1(s__0[15]),
        .O(res_OBUF_inst_i_27_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_28
       (.I0(s__0[12]),
        .I1(s__0[13]),
        .O(res_OBUF_inst_i_28_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_29
       (.I0(s__0[10]),
        .I1(s__0[11]),
        .O(res_OBUF_inst_i_29_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    res_OBUF_inst_i_3
       (.I0(s__0[30]),
        .I1(s__0[31]),
        .O(res_OBUF_inst_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_30
       (.I0(s__0[8]),
        .I1(s__0[9]),
        .O(res_OBUF_inst_i_30_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_OBUF_inst_i_31
       (.CI(res_OBUF_inst_i_32_n_0),
        .CO({res_OBUF_inst_i_31_n_0,NLW_res_OBUF_inst_i_31_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({s_n_83,s_n_84,s_n_85,s_n_86}),
        .O(s__0[23:20]),
        .S({res_OBUF_inst_i_51_n_0,res_OBUF_inst_i_52_n_0,res_OBUF_inst_i_53_n_0,res_OBUF_inst_i_54_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_OBUF_inst_i_32
       (.CI(res_OBUF_inst_i_49_n_0),
        .CO({res_OBUF_inst_i_32_n_0,NLW_res_OBUF_inst_i_32_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({s_n_87,s_n_88,s_n_89,s_n_90}),
        .O(s__0[19:16]),
        .S({res_OBUF_inst_i_55_n_0,res_OBUF_inst_i_56_n_0,res_OBUF_inst_i_57_n_0,res_OBUF_inst_i_58_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_33
       (.I0(s_n_75),
        .I1(s_n_74),
        .O(res_OBUF_inst_i_33_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_34
       (.I0(s_n_76),
        .I1(s_n_75),
        .O(res_OBUF_inst_i_34_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_35
       (.I0(s_n_77),
        .I1(s_n_76),
        .O(res_OBUF_inst_i_35_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_36
       (.I0(s_n_78),
        .I1(s_n_77),
        .O(res_OBUF_inst_i_36_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_37
       (.I0(s_n_79),
        .I1(s_n_78),
        .O(res_OBUF_inst_i_37_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_38
       (.I0(s_n_80),
        .I1(s_n_79),
        .O(res_OBUF_inst_i_38_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_39
       (.I0(s_n_81),
        .I1(s_n_80),
        .O(res_OBUF_inst_i_39_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    res_OBUF_inst_i_4
       (.I0(s__0[28]),
        .I1(s__0[29]),
        .O(res_OBUF_inst_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_40
       (.I0(s_n_82),
        .I1(s_n_81),
        .O(res_OBUF_inst_i_40_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    res_OBUF_inst_i_41
       (.I0(s__0[6]),
        .I1(s__0[7]),
        .O(res_OBUF_inst_i_41_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    res_OBUF_inst_i_42
       (.I0(s__0[4]),
        .I1(s__0[5]),
        .O(res_OBUF_inst_i_42_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    res_OBUF_inst_i_43
       (.I0(s__0[2]),
        .I1(s__0[3]),
        .O(res_OBUF_inst_i_43_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    res_OBUF_inst_i_44
       (.I0(s__0[0]),
        .I1(s__0[1]),
        .O(res_OBUF_inst_i_44_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_45
       (.I0(s__0[6]),
        .I1(s__0[7]),
        .O(res_OBUF_inst_i_45_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_46
       (.I0(s__0[4]),
        .I1(s__0[5]),
        .O(res_OBUF_inst_i_46_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_47
       (.I0(s__0[2]),
        .I1(s__0[3]),
        .O(res_OBUF_inst_i_47_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_48
       (.I0(s__0[0]),
        .I1(s__0[1]),
        .O(res_OBUF_inst_i_48_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_OBUF_inst_i_49
       (.CI(res_OBUF_inst_i_50_n_0),
        .CO({res_OBUF_inst_i_49_n_0,NLW_res_OBUF_inst_i_49_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_OBUF_inst_i_61_n_0,theta0_IBUF[14:12]}),
        .O(s__0[15:12]),
        .S({res_OBUF_inst_i_62_n_0,res_OBUF_inst_i_63_n_0,res_OBUF_inst_i_64_n_0,res_OBUF_inst_i_65_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    res_OBUF_inst_i_5
       (.I0(s__0[26]),
        .I1(s__0[27]),
        .O(res_OBUF_inst_i_5_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_OBUF_inst_i_50
       (.CI(res_OBUF_inst_i_59_n_0),
        .CO({res_OBUF_inst_i_50_n_0,NLW_res_OBUF_inst_i_50_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(theta0_IBUF[11:8]),
        .O(s__0[11:8]),
        .S({res_OBUF_inst_i_66_n_0,res_OBUF_inst_i_67_n_0,res_OBUF_inst_i_68_n_0,res_OBUF_inst_i_69_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_51
       (.I0(s_n_83),
        .I1(s_n_82),
        .O(res_OBUF_inst_i_51_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_52
       (.I0(s_n_84),
        .I1(s_n_83),
        .O(res_OBUF_inst_i_52_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_53
       (.I0(s_n_85),
        .I1(s_n_84),
        .O(res_OBUF_inst_i_53_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_54
       (.I0(s_n_86),
        .I1(s_n_85),
        .O(res_OBUF_inst_i_54_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_55
       (.I0(s_n_87),
        .I1(s_n_86),
        .O(res_OBUF_inst_i_55_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_56
       (.I0(s_n_88),
        .I1(s_n_87),
        .O(res_OBUF_inst_i_56_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_57
       (.I0(s_n_89),
        .I1(s_n_88),
        .O(res_OBUF_inst_i_57_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_OBUF_inst_i_58
       (.I0(s_n_90),
        .I1(s_n_89),
        .O(res_OBUF_inst_i_58_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_OBUF_inst_i_59
       (.CI(res_OBUF_inst_i_60_n_0),
        .CO({res_OBUF_inst_i_59_n_0,NLW_res_OBUF_inst_i_59_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(theta0_IBUF[7:4]),
        .O(s__0[7:4]),
        .S({res_OBUF_inst_i_70_n_0,res_OBUF_inst_i_71_n_0,res_OBUF_inst_i_72_n_0,res_OBUF_inst_i_73_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    res_OBUF_inst_i_6
       (.I0(s__0[24]),
        .I1(s__0[25]),
        .O(res_OBUF_inst_i_6_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_OBUF_inst_i_60
       (.CI(1'b0),
        .CO({res_OBUF_inst_i_60_n_0,NLW_res_OBUF_inst_i_60_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(theta0_IBUF[3:0]),
        .O(s__0[3:0]),
        .S({res_OBUF_inst_i_74_n_0,res_OBUF_inst_i_75_n_0,res_OBUF_inst_i_76_n_0,res_OBUF_inst_i_77_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    res_OBUF_inst_i_61
       (.I0(s_n_90),
        .O(res_OBUF_inst_i_61_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_62
       (.I0(s_n_90),
        .I1(theta0_IBUF[15]),
        .O(res_OBUF_inst_i_62_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_63
       (.I0(theta0_IBUF[14]),
        .I1(s_n_91),
        .O(res_OBUF_inst_i_63_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_64
       (.I0(theta0_IBUF[13]),
        .I1(s_n_92),
        .O(res_OBUF_inst_i_64_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_65
       (.I0(theta0_IBUF[12]),
        .I1(s_n_93),
        .O(res_OBUF_inst_i_65_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_66
       (.I0(theta0_IBUF[11]),
        .I1(s_n_94),
        .O(res_OBUF_inst_i_66_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_67
       (.I0(theta0_IBUF[10]),
        .I1(s_n_95),
        .O(res_OBUF_inst_i_67_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_68
       (.I0(theta0_IBUF[9]),
        .I1(s_n_96),
        .O(res_OBUF_inst_i_68_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_69
       (.I0(theta0_IBUF[8]),
        .I1(s_n_97),
        .O(res_OBUF_inst_i_69_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_7
       (.I0(s__0[30]),
        .I1(s__0[31]),
        .O(res_OBUF_inst_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_70
       (.I0(theta0_IBUF[7]),
        .I1(s_n_98),
        .O(res_OBUF_inst_i_70_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_71
       (.I0(theta0_IBUF[6]),
        .I1(s_n_99),
        .O(res_OBUF_inst_i_71_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_72
       (.I0(theta0_IBUF[5]),
        .I1(s_n_100),
        .O(res_OBUF_inst_i_72_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_73
       (.I0(theta0_IBUF[4]),
        .I1(s_n_101),
        .O(res_OBUF_inst_i_73_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_74
       (.I0(theta0_IBUF[3]),
        .I1(s_n_102),
        .O(res_OBUF_inst_i_74_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_75
       (.I0(theta0_IBUF[2]),
        .I1(s_n_103),
        .O(res_OBUF_inst_i_75_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_76
       (.I0(theta0_IBUF[1]),
        .I1(s_n_104),
        .O(res_OBUF_inst_i_76_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_OBUF_inst_i_77
       (.I0(theta0_IBUF[0]),
        .I1(s_n_105),
        .O(res_OBUF_inst_i_77_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_8
       (.I0(s__0[28]),
        .I1(s__0[29]),
        .O(res_OBUF_inst_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    res_OBUF_inst_i_9
       (.I0(s__0[26]),
        .I1(s__0[27]),
        .O(res_OBUF_inst_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    s
       (.A({in2_IBUF[15],in2_IBUF[15],in2_IBUF[15],in2_IBUF[15],in2_IBUF[15],in2_IBUF[15],in2_IBUF[15],in2_IBUF[15],in2_IBUF[15],in2_IBUF[15],in2_IBUF[15],in2_IBUF[15],in2_IBUF[15],in2_IBUF[15],in2_IBUF}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_s_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({theta2_IBUF[15],theta2_IBUF[15],theta2_IBUF}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_s_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_s_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_s_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_s_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_s_OVERFLOW_UNCONNECTED),
        .P({NLW_s_P_UNCONNECTED[47:32],s_n_74,s_n_75,s_n_76,s_n_77,s_n_78,s_n_79,s_n_80,s_n_81,s_n_82,s_n_83,s_n_84,s_n_85,s_n_86,s_n_87,s_n_88,s_n_89,s_n_90,s_n_91,s_n_92,s_n_93,s_n_94,s_n_95,s_n_96,s_n_97,s_n_98,s_n_99,s_n_100,s_n_101,s_n_102,s_n_103,s_n_104,s_n_105}),
        .PATTERNBDETECT(NLW_s_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_s_PATTERNDETECT_UNCONNECTED),
        .PCIN({s1_n_106,s1_n_107,s1_n_108,s1_n_109,s1_n_110,s1_n_111,s1_n_112,s1_n_113,s1_n_114,s1_n_115,s1_n_116,s1_n_117,s1_n_118,s1_n_119,s1_n_120,s1_n_121,s1_n_122,s1_n_123,s1_n_124,s1_n_125,s1_n_126,s1_n_127,s1_n_128,s1_n_129,s1_n_130,s1_n_131,s1_n_132,s1_n_133,s1_n_134,s1_n_135,s1_n_136,s1_n_137,s1_n_138,s1_n_139,s1_n_140,s1_n_141,s1_n_142,s1_n_143,s1_n_144,s1_n_145,s1_n_146,s1_n_147,s1_n_148,s1_n_149,s1_n_150,s1_n_151,s1_n_152,s1_n_153}),
        .PCOUT(NLW_s_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_s_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    s1
       (.A({in1_IBUF[15],in1_IBUF[15],in1_IBUF[15],in1_IBUF[15],in1_IBUF[15],in1_IBUF[15],in1_IBUF[15],in1_IBUF[15],in1_IBUF[15],in1_IBUF[15],in1_IBUF[15],in1_IBUF[15],in1_IBUF[15],in1_IBUF[15],in1_IBUF}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_s1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({theta1_IBUF[15],theta1_IBUF[15],theta1_IBUF}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_s1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_s1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_s1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_s1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_s1_OVERFLOW_UNCONNECTED),
        .P(NLW_s1_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_s1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_s1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({s1_n_106,s1_n_107,s1_n_108,s1_n_109,s1_n_110,s1_n_111,s1_n_112,s1_n_113,s1_n_114,s1_n_115,s1_n_116,s1_n_117,s1_n_118,s1_n_119,s1_n_120,s1_n_121,s1_n_122,s1_n_123,s1_n_124,s1_n_125,s1_n_126,s1_n_127,s1_n_128,s1_n_129,s1_n_130,s1_n_131,s1_n_132,s1_n_133,s1_n_134,s1_n_135,s1_n_136,s1_n_137,s1_n_138,s1_n_139,s1_n_140,s1_n_141,s1_n_142,s1_n_143,s1_n_144,s1_n_145,s1_n_146,s1_n_147,s1_n_148,s1_n_149,s1_n_150,s1_n_151,s1_n_152,s1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_s1_UNDERFLOW_UNCONNECTED));
  IBUF \theta0_IBUF[0]_inst 
       (.I(theta0[0]),
        .O(theta0_IBUF[0]));
  IBUF \theta0_IBUF[10]_inst 
       (.I(theta0[10]),
        .O(theta0_IBUF[10]));
  IBUF \theta0_IBUF[11]_inst 
       (.I(theta0[11]),
        .O(theta0_IBUF[11]));
  IBUF \theta0_IBUF[12]_inst 
       (.I(theta0[12]),
        .O(theta0_IBUF[12]));
  IBUF \theta0_IBUF[13]_inst 
       (.I(theta0[13]),
        .O(theta0_IBUF[13]));
  IBUF \theta0_IBUF[14]_inst 
       (.I(theta0[14]),
        .O(theta0_IBUF[14]));
  IBUF \theta0_IBUF[15]_inst 
       (.I(theta0[15]),
        .O(theta0_IBUF[15]));
  IBUF \theta0_IBUF[1]_inst 
       (.I(theta0[1]),
        .O(theta0_IBUF[1]));
  IBUF \theta0_IBUF[2]_inst 
       (.I(theta0[2]),
        .O(theta0_IBUF[2]));
  IBUF \theta0_IBUF[3]_inst 
       (.I(theta0[3]),
        .O(theta0_IBUF[3]));
  IBUF \theta0_IBUF[4]_inst 
       (.I(theta0[4]),
        .O(theta0_IBUF[4]));
  IBUF \theta0_IBUF[5]_inst 
       (.I(theta0[5]),
        .O(theta0_IBUF[5]));
  IBUF \theta0_IBUF[6]_inst 
       (.I(theta0[6]),
        .O(theta0_IBUF[6]));
  IBUF \theta0_IBUF[7]_inst 
       (.I(theta0[7]),
        .O(theta0_IBUF[7]));
  IBUF \theta0_IBUF[8]_inst 
       (.I(theta0[8]),
        .O(theta0_IBUF[8]));
  IBUF \theta0_IBUF[9]_inst 
       (.I(theta0[9]),
        .O(theta0_IBUF[9]));
  IBUF \theta1_IBUF[0]_inst 
       (.I(theta1[0]),
        .O(theta1_IBUF[0]));
  IBUF \theta1_IBUF[10]_inst 
       (.I(theta1[10]),
        .O(theta1_IBUF[10]));
  IBUF \theta1_IBUF[11]_inst 
       (.I(theta1[11]),
        .O(theta1_IBUF[11]));
  IBUF \theta1_IBUF[12]_inst 
       (.I(theta1[12]),
        .O(theta1_IBUF[12]));
  IBUF \theta1_IBUF[13]_inst 
       (.I(theta1[13]),
        .O(theta1_IBUF[13]));
  IBUF \theta1_IBUF[14]_inst 
       (.I(theta1[14]),
        .O(theta1_IBUF[14]));
  IBUF \theta1_IBUF[15]_inst 
       (.I(theta1[15]),
        .O(theta1_IBUF[15]));
  IBUF \theta1_IBUF[1]_inst 
       (.I(theta1[1]),
        .O(theta1_IBUF[1]));
  IBUF \theta1_IBUF[2]_inst 
       (.I(theta1[2]),
        .O(theta1_IBUF[2]));
  IBUF \theta1_IBUF[3]_inst 
       (.I(theta1[3]),
        .O(theta1_IBUF[3]));
  IBUF \theta1_IBUF[4]_inst 
       (.I(theta1[4]),
        .O(theta1_IBUF[4]));
  IBUF \theta1_IBUF[5]_inst 
       (.I(theta1[5]),
        .O(theta1_IBUF[5]));
  IBUF \theta1_IBUF[6]_inst 
       (.I(theta1[6]),
        .O(theta1_IBUF[6]));
  IBUF \theta1_IBUF[7]_inst 
       (.I(theta1[7]),
        .O(theta1_IBUF[7]));
  IBUF \theta1_IBUF[8]_inst 
       (.I(theta1[8]),
        .O(theta1_IBUF[8]));
  IBUF \theta1_IBUF[9]_inst 
       (.I(theta1[9]),
        .O(theta1_IBUF[9]));
  IBUF \theta2_IBUF[0]_inst 
       (.I(theta2[0]),
        .O(theta2_IBUF[0]));
  IBUF \theta2_IBUF[10]_inst 
       (.I(theta2[10]),
        .O(theta2_IBUF[10]));
  IBUF \theta2_IBUF[11]_inst 
       (.I(theta2[11]),
        .O(theta2_IBUF[11]));
  IBUF \theta2_IBUF[12]_inst 
       (.I(theta2[12]),
        .O(theta2_IBUF[12]));
  IBUF \theta2_IBUF[13]_inst 
       (.I(theta2[13]),
        .O(theta2_IBUF[13]));
  IBUF \theta2_IBUF[14]_inst 
       (.I(theta2[14]),
        .O(theta2_IBUF[14]));
  IBUF \theta2_IBUF[15]_inst 
       (.I(theta2[15]),
        .O(theta2_IBUF[15]));
  IBUF \theta2_IBUF[1]_inst 
       (.I(theta2[1]),
        .O(theta2_IBUF[1]));
  IBUF \theta2_IBUF[2]_inst 
       (.I(theta2[2]),
        .O(theta2_IBUF[2]));
  IBUF \theta2_IBUF[3]_inst 
       (.I(theta2[3]),
        .O(theta2_IBUF[3]));
  IBUF \theta2_IBUF[4]_inst 
       (.I(theta2[4]),
        .O(theta2_IBUF[4]));
  IBUF \theta2_IBUF[5]_inst 
       (.I(theta2[5]),
        .O(theta2_IBUF[5]));
  IBUF \theta2_IBUF[6]_inst 
       (.I(theta2[6]),
        .O(theta2_IBUF[6]));
  IBUF \theta2_IBUF[7]_inst 
       (.I(theta2[7]),
        .O(theta2_IBUF[7]));
  IBUF \theta2_IBUF[8]_inst 
       (.I(theta2[8]),
        .O(theta2_IBUF[8]));
  IBUF \theta2_IBUF[9]_inst 
       (.I(theta2[9]),
        .O(theta2_IBUF[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
