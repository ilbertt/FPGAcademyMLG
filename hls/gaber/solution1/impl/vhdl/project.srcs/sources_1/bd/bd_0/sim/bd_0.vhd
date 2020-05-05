--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
--Date        : Mon May  4 11:16:41 2020
--Host        : gigo-MacBookPro running 64-bit Ubuntu 18.04.3 LTS
--Command     : generate_target bd_0.bd
--Design      : bd_0
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_0 : entity is "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_0 : entity is "bd_0.hwdef";
end bd_0;

architecture STRUCTURE of bd_0 is
  component bd_0_hls_inst_0 is
  port (
    res_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    op_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    op_empty_n : in STD_LOGIC;
    op_read : out STD_LOGIC;
    res : out STD_LOGIC
  );
  end component bd_0_hls_inst_0;
  signal ap_clk_0_1 : STD_LOGIC;
  signal ap_ctrl_0_1_done : STD_LOGIC;
  signal ap_ctrl_0_1_idle : STD_LOGIC;
  signal ap_ctrl_0_1_ready : STD_LOGIC;
  signal ap_ctrl_0_1_start : STD_LOGIC;
  signal ap_rst_0_1 : STD_LOGIC;
  signal hls_inst_op_EMPTY_N : STD_LOGIC;
  signal hls_inst_op_RD_DATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal hls_inst_op_RD_EN : STD_LOGIC;
  signal hls_inst_res : STD_LOGIC;
  signal hls_inst_res_ap_vld : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ap_ctrl_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_ctrl_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_ctrl_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_ctrl_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 RST.AP_RST RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of op_empty_n : signal is "xilinx.com:interface:acc_fifo_read:1.0 op ";
  attribute X_INTERFACE_INFO of op_rd_en : signal is "xilinx.com:interface:acc_fifo_read:1.0 op ";
  attribute X_INTERFACE_INFO of res : signal is "xilinx.com:signal:data:1.0 DATA.RES DATA";
  attribute X_INTERFACE_PARAMETER of res : signal is "XIL_INTERFACENAME DATA.RES, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of op_rd_data : signal is "xilinx.com:interface:acc_fifo_read:1.0 op ";
begin
  ap_clk_0_1 <= ap_clk;
  ap_ctrl_0_1_start <= ap_ctrl_start;
  ap_ctrl_done <= ap_ctrl_0_1_done;
  ap_ctrl_idle <= ap_ctrl_0_1_idle;
  ap_ctrl_ready <= ap_ctrl_0_1_ready;
  ap_rst_0_1 <= ap_rst;
  hls_inst_op_EMPTY_N <= op_empty_n;
  hls_inst_op_RD_DATA(15 downto 0) <= op_rd_data(15 downto 0);
  op_rd_en <= hls_inst_op_RD_EN;
  res <= hls_inst_res;
  res_ap_vld <= hls_inst_res_ap_vld;
hls_inst: component bd_0_hls_inst_0
     port map (
      ap_clk => ap_clk_0_1,
      ap_done => ap_ctrl_0_1_done,
      ap_idle => ap_ctrl_0_1_idle,
      ap_ready => ap_ctrl_0_1_ready,
      ap_rst => ap_rst_0_1,
      ap_start => ap_ctrl_0_1_start,
      op_dout(15 downto 0) => hls_inst_op_RD_DATA(15 downto 0),
      op_empty_n => hls_inst_op_EMPTY_N,
      op_read => hls_inst_op_RD_EN,
      res => hls_inst_res,
      res_ap_vld => hls_inst_res_ap_vld
    );
end STRUCTURE;
