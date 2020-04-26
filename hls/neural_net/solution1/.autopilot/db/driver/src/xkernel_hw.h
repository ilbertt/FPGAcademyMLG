// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of op
//        bit 31~0 - op[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of res
//        bit 31~0 - res[31:0] (Read)
// 0x1c : Control signal of res
//        bit 0  - res_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XKERNEL_AXILITES_ADDR_AP_CTRL  0x00
#define XKERNEL_AXILITES_ADDR_GIE      0x04
#define XKERNEL_AXILITES_ADDR_IER      0x08
#define XKERNEL_AXILITES_ADDR_ISR      0x0c
#define XKERNEL_AXILITES_ADDR_OP_DATA  0x10
#define XKERNEL_AXILITES_BITS_OP_DATA  32
#define XKERNEL_AXILITES_ADDR_RES_DATA 0x18
#define XKERNEL_AXILITES_BITS_RES_DATA 32
#define XKERNEL_AXILITES_ADDR_RES_CTRL 0x1c

