--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
--Date        : Mon May  4 11:16:42 2020
--Host        : gigo-MacBookPro running 64-bit Ubuntu 18.04.3 LTS
--Command     : generate_target bd_0_wrapper.bd
--Design      : bd_0_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_wrapper is
  port (
    ap_clk : in STD_LOGIC;
    ap_ctrl_done : out STD_LOGIC;
    ap_ctrl_idle : out STD_LOGIC;
    ap_ctrl_ready : out STD_LOGIC;
    ap_ctrl_start : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    op_empty_n : in STD_LOGIC;
    op_rd_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    op_rd_en : out STD_LOGIC;
    res : out STD_LOGIC;
    res_ap_vld : out STD_LOGIC
  );
end bd_0_wrapper;

architecture STRUCTURE of bd_0_wrapper is
  component bd_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    res : out STD_LOGIC;
    res_ap_vld : out STD_LOGIC;
    ap_ctrl_start : in STD_LOGIC;
    ap_ctrl_done : out STD_LOGIC;
    ap_ctrl_idle : out STD_LOGIC;
    ap_ctrl_ready : out STD_LOGIC;
    op_rd_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    op_empty_n : in STD_LOGIC;
    op_rd_en : out STD_LOGIC
  );
  end component bd_0;
begin
bd_0_i: component bd_0
     port map (
      ap_clk => ap_clk,
      ap_ctrl_done => ap_ctrl_done,
      ap_ctrl_idle => ap_ctrl_idle,
      ap_ctrl_ready => ap_ctrl_ready,
      ap_ctrl_start => ap_ctrl_start,
      ap_rst => ap_rst,
      op_empty_n => op_empty_n,
      op_rd_data(15 downto 0) => op_rd_data(15 downto 0),
      op_rd_en => op_rd_en,
      res => res,
      res_ap_vld => res_ap_vld
    );
end STRUCTURE;
