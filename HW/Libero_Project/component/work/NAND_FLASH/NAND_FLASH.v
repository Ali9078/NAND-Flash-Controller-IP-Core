//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Jul 31 15:22:37 2025
// Version: 2023.1 2023.1.0.6
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// NAND_FLASH
module NAND_FLASH(
    // Inputs
    DEVRST_N,
    MMUART_0_RXD,
    nand_rnb,
    nand_rnb2,
    // Outputs
    MMUART_0_TXD,
    nand_ale,
    nand_cle,
    nand_nce,
    nand_nce2,
    nand_nre,
    nand_nwe,
    nand_nwp,
    // Inouts
    nand_data
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        DEVRST_N;
input        MMUART_0_RXD;
input        nand_rnb;
input        nand_rnb2;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       MMUART_0_TXD;
output       nand_ale;
output       nand_cle;
output       nand_nce;
output       nand_nce2;
output       nand_nre;
output       nand_nwe;
output       nand_nwp;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  [7:0] nand_data;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         DEVRST_N;
wire         MMUART_0_RXD;
wire         MMUART_0_TXD_net_0;
wire         nand_ale_net_0;
wire         nand_cle_net_0;
wire   [7:0] nand_data;
wire         nand_nce_net_0;
wire         nand_nce2_net_0;
wire         nand_nre_net_0;
wire         nand_nwe_net_0;
wire         nand_nwp_net_0;
wire         nand_rnb;
wire         nand_rnb2;
wire         MMUART_0_TXD_net_1;
wire         nand_nre_net_1;
wire         nand_nce_net_1;
wire         nand_nce2_net_1;
wire         nand_nwe_net_1;
wire         nand_cle_net_1;
wire         nand_nwp_net_1;
wire         nand_ale_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign MMUART_0_TXD_net_1 = MMUART_0_TXD_net_0;
assign MMUART_0_TXD       = MMUART_0_TXD_net_1;
assign nand_nre_net_1     = nand_nre_net_0;
assign nand_nre           = nand_nre_net_1;
assign nand_nce_net_1     = nand_nce_net_0;
assign nand_nce           = nand_nce_net_1;
assign nand_nce2_net_1    = nand_nce2_net_0;
assign nand_nce2          = nand_nce2_net_1;
assign nand_nwe_net_1     = nand_nwe_net_0;
assign nand_nwe           = nand_nwe_net_1;
assign nand_cle_net_1     = nand_cle_net_0;
assign nand_cle           = nand_cle_net_1;
assign nand_nwp_net_1     = nand_nwp_net_0;
assign nand_nwp           = nand_nwp_net_1;
assign nand_ale_net_1     = nand_ale_net_0;
assign nand_ale           = nand_ale_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------NAND_FLASH_sb
NAND_FLASH_sb NAND_FLASH_sb_0(
        // Inputs
        .MMUART_0_RXD     ( MMUART_0_RXD ),
        .FAB_RESET_N      ( VCC_net ),
        .DEVRST_N         ( DEVRST_N ),
        .nand_rnb         ( nand_rnb ),
        .nand_rnb2        ( nand_rnb2 ),
        // Outputs
        .MMUART_0_TXD     ( MMUART_0_TXD_net_0 ),
        .POWER_ON_RESET_N (  ),
        .FAB_CCC_GL0      (  ),
        .FAB_CCC_LOCK     (  ),
        .MSS_READY        (  ),
        .nand_nre         ( nand_nre_net_0 ),
        .nand_ale         ( nand_ale_net_0 ),
        .nand_nce2        ( nand_nce2_net_0 ),
        .nand_nwe         ( nand_nwe_net_0 ),
        .nand_cle         ( nand_cle_net_0 ),
        .nand_nwp         ( nand_nwp_net_0 ),
        .nand_nce         ( nand_nce_net_0 ),
        // Inouts
        .nand_data        ( nand_data ) 
        );


endmodule
