//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Jul 31 15:22:09 2025
// Version: 2023.1 2023.1.0.6
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// NAND_FLASH_sb
module NAND_FLASH_sb(
    // Inputs
    DEVRST_N,
    FAB_RESET_N,
    MMUART_0_RXD,
    nand_rnb,
    nand_rnb2,
    // Outputs
    FAB_CCC_GL0,
    FAB_CCC_LOCK,
    MMUART_0_TXD,
    MSS_READY,
    POWER_ON_RESET_N,
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
input        FAB_RESET_N;
input        MMUART_0_RXD;
input        nand_rnb;
input        nand_rnb2;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       FAB_CCC_GL0;
output       FAB_CCC_LOCK;
output       MMUART_0_TXD;
output       MSS_READY;
output       POWER_ON_RESET_N;
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
wire          AND2_0_Y;
wire          CoreAPB3_C0_0_APBmslave0_PENABLE;
wire   [31:0] CoreAPB3_C0_0_APBmslave0_PRDATA;
wire          CoreAPB3_C0_0_APBmslave0_PREADY;
wire          CoreAPB3_C0_0_APBmslave0_PSELx;
wire          CoreAPB3_C0_0_APBmslave0_PSLVERR;
wire   [31:0] CoreAPB3_C0_0_APBmslave0_PWDATA;
wire          CoreAPB3_C0_0_APBmslave0_PWRITE;
wire          CORERESETP_0_RESET_N_F2M;
wire          DEVRST_N;
wire          FAB_CCC_GL0_net_0;
wire          FAB_CCC_LOCK_net_0;
wire          FAB_RESET_N;
wire          FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC;
wire          FABOSC_0_RCOSC_25_50MHZ_O2F;
wire          INIT_DONE;
wire          MMUART_0_RXD;
wire          MMUART_0_TXD_net_0;
wire          MSS_READY_net_0;
wire          nand_ale_net_0;
wire          nand_cle_net_0;
wire   [7:0]  nand_data;
wire   [31:0] NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PADDR;
wire          NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PENABLE;
wire   [31:0] NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PRDATA;
wire          NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PREADY;
wire          NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PSELx;
wire          NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PSLVERR;
wire   [31:0] NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PWDATA;
wire          NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PWRITE;
wire          NAND_FLASH_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N;
wire          NAND_FLASH_sb_MSS_TMP_0_MSS_RESET_N_M2F;
wire          nand_nce_net_0;
wire          nand_nce2_net_0;
wire          nand_nre_net_0;
wire          nand_nwe_net_0;
wire          nand_nwp_net_0;
wire          nand_rnb;
wire          nand_rnb2;
wire          POWER_ON_RESET_N_net_0;
wire          MMUART_0_TXD_net_1;
wire          POWER_ON_RESET_N_net_1;
wire          FAB_CCC_GL0_net_1;
wire          FAB_CCC_LOCK_net_1;
wire          MSS_READY_net_1;
wire          nand_nre_net_1;
wire          nand_ale_net_1;
wire          nand_nce2_net_1;
wire          nand_nwe_net_1;
wire          nand_cle_net_1;
wire          nand_nwp_net_1;
wire          nand_nce_net_1;
wire   [15:0] nand_data_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
wire   [15:8] nand_data_const_net_0;
wire          GND_net;
wire   [7:2]  PADDR_const_net_0;
wire   [7:0]  PWDATA_const_net_0;
wire   [31:0] SDIF0_PRDATA_const_net_0;
wire   [31:0] SDIF1_PRDATA_const_net_0;
wire   [31:0] SDIF2_PRDATA_const_net_0;
wire   [31:0] SDIF3_PRDATA_const_net_0;
wire   [31:0] FIC_2_APB_M_PRDATA_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0] CoreAPB3_C0_0_APBmslave0_PADDR;
wire   [15:0] CoreAPB3_C0_0_APBmslave0_PADDR_0;
wire   [15:0] CoreAPB3_C0_0_APBmslave0_PADDR_0_15to0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net                        = 1'b1;
assign nand_data_const_net_0          = 8'h00;
assign GND_net                        = 1'b0;
assign PADDR_const_net_0              = 6'h00;
assign PWDATA_const_net_0             = 8'h00;
assign SDIF0_PRDATA_const_net_0       = 32'h00000000;
assign SDIF1_PRDATA_const_net_0       = 32'h00000000;
assign SDIF2_PRDATA_const_net_0       = 32'h00000000;
assign SDIF3_PRDATA_const_net_0       = 32'h00000000;
assign FIC_2_APB_M_PRDATA_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign MMUART_0_TXD_net_1     = MMUART_0_TXD_net_0;
assign MMUART_0_TXD           = MMUART_0_TXD_net_1;
assign POWER_ON_RESET_N_net_1 = POWER_ON_RESET_N_net_0;
assign POWER_ON_RESET_N       = POWER_ON_RESET_N_net_1;
assign FAB_CCC_GL0_net_1      = FAB_CCC_GL0_net_0;
assign FAB_CCC_GL0            = FAB_CCC_GL0_net_1;
assign FAB_CCC_LOCK_net_1     = FAB_CCC_LOCK_net_0;
assign FAB_CCC_LOCK           = FAB_CCC_LOCK_net_1;
assign MSS_READY_net_1        = MSS_READY_net_0;
assign MSS_READY              = MSS_READY_net_1;
assign nand_nre_net_1         = nand_nre_net_0;
assign nand_nre               = nand_nre_net_1;
assign nand_ale_net_1         = nand_ale_net_0;
assign nand_ale               = nand_ale_net_1;
assign nand_nce2_net_1        = nand_nce2_net_0;
assign nand_nce2              = nand_nce2_net_1;
assign nand_nwe_net_1         = nand_nwe_net_0;
assign nand_nwe               = nand_nwe_net_1;
assign nand_cle_net_1         = nand_cle_net_0;
assign nand_cle               = nand_cle_net_1;
assign nand_nwp_net_1         = nand_nwp_net_0;
assign nand_nwp               = nand_nwp_net_1;
assign nand_nce_net_1         = nand_nce_net_0;
assign nand_nce               = nand_nce_net_1;
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign nand_data_net_0 = { 8'h00 , nand_data };
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAPB3_C0_0_APBmslave0_PADDR_0 = { CoreAPB3_C0_0_APBmslave0_PADDR_0_15to0 };
assign CoreAPB3_C0_0_APBmslave0_PADDR_0_15to0 = CoreAPB3_C0_0_APBmslave0_PADDR[15:0];

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND2
AND2 AND2_0(
        // Inputs
        .A ( FAB_RESET_N ),
        .B ( INIT_DONE ),
        // Outputs
        .Y ( AND2_0_Y ) 
        );

//--------NAND_FLASH_sb_CCC_0_FCCC   -   Actel:SgCore:FCCC:2.0.201
NAND_FLASH_sb_CCC_0_FCCC CCC_0(
        // Inputs
        .RCOSC_25_50MHZ ( FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC ),
        // Outputs
        .GL0            ( FAB_CCC_GL0_net_0 ),
        .LOCK           ( FAB_CCC_LOCK_net_0 ) 
        );

//--------CoreAPB3_C0
CoreAPB3_C0 CoreAPB3_C0_0(
        // Inputs
        .PADDR     ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PADDR ),
        .PSEL      ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PSELx ),
        .PENABLE   ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PENABLE ),
        .PWRITE    ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PWRITE ),
        .PWDATA    ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PWDATA ),
        .PRDATAS0  ( CoreAPB3_C0_0_APBmslave0_PRDATA ),
        .PREADYS0  ( CoreAPB3_C0_0_APBmslave0_PREADY ),
        .PSLVERRS0 ( CoreAPB3_C0_0_APBmslave0_PSLVERR ),
        // Outputs
        .PRDATA    ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PRDATA ),
        .PREADY    ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PREADY ),
        .PSLVERR   ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PSLVERR ),
        .PADDRS    ( CoreAPB3_C0_0_APBmslave0_PADDR ),
        .PSELS0    ( CoreAPB3_C0_0_APBmslave0_PSELx ),
        .PENABLES  ( CoreAPB3_C0_0_APBmslave0_PENABLE ),
        .PWRITES   ( CoreAPB3_C0_0_APBmslave0_PWRITE ),
        .PWDATAS   ( CoreAPB3_C0_0_APBmslave0_PWDATA ) 
        );

//--------CoreResetP   -   Actel:DirectCore:CoreResetP:7.1.100
CoreResetP #( 
        .DDR_WAIT            ( 200 ),
        .DEVICE_090          ( 0 ),
        .DEVICE_VOLTAGE      ( 2 ),
        .ENABLE_SOFT_RESETS  ( 0 ),
        .EXT_RESET_CFG       ( 0 ),
        .FDDR_IN_USE         ( 0 ),
        .MDDR_IN_USE         ( 0 ),
        .SDIF0_IN_USE        ( 0 ),
        .SDIF0_PCIE          ( 0 ),
        .SDIF0_PCIE_HOTRESET ( 1 ),
        .SDIF0_PCIE_L2P2     ( 1 ),
        .SDIF1_IN_USE        ( 0 ),
        .SDIF1_PCIE          ( 0 ),
        .SDIF1_PCIE_HOTRESET ( 1 ),
        .SDIF1_PCIE_L2P2     ( 1 ),
        .SDIF2_IN_USE        ( 0 ),
        .SDIF2_PCIE          ( 0 ),
        .SDIF2_PCIE_HOTRESET ( 1 ),
        .SDIF2_PCIE_L2P2     ( 1 ),
        .SDIF3_IN_USE        ( 0 ),
        .SDIF3_PCIE          ( 0 ),
        .SDIF3_PCIE_HOTRESET ( 1 ),
        .SDIF3_PCIE_L2P2     ( 1 ) )
CORERESETP_0(
        // Inputs
        .RESET_N_M2F                    ( NAND_FLASH_sb_MSS_TMP_0_MSS_RESET_N_M2F ),
        .FIC_2_APB_M_PRESET_N           ( NAND_FLASH_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N ),
        .POWER_ON_RESET_N               ( POWER_ON_RESET_N_net_0 ),
        .FAB_RESET_N                    ( FAB_RESET_N ),
        .RCOSC_25_50MHZ                 ( FABOSC_0_RCOSC_25_50MHZ_O2F ),
        .CLK_BASE                       ( FAB_CCC_GL0_net_0 ),
        .CLK_LTSSM                      ( GND_net ), // tied to 1'b0 from definition
        .FPLL_LOCK                      ( VCC_net ), // tied to 1'b1 from definition
        .SDIF0_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .SDIF1_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .SDIF2_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .SDIF3_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .CONFIG1_DONE                   ( VCC_net ),
        .CONFIG2_DONE                   ( VCC_net ),
        .SDIF0_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF1_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF2_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF3_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF0_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF0_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SDIF1_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF1_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SDIF2_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF2_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SDIF3_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF3_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SOFT_EXT_RESET_OUT             ( GND_net ), // tied to 1'b0 from definition
        .SOFT_RESET_F2M                 ( GND_net ), // tied to 1'b0 from definition
        .SOFT_M3_RESET                  ( GND_net ), // tied to 1'b0 from definition
        .SOFT_MDDR_DDR_AXI_S_CORE_RESET ( GND_net ), // tied to 1'b0 from definition
        .SOFT_FDDR_CORE_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_0_CORE_RESET        ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_1_CORE_RESET        ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF1_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF1_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF2_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF2_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF3_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF3_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        .SDIF0_PRDATA                   ( SDIF0_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .SDIF1_PRDATA                   ( SDIF1_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .SDIF2_PRDATA                   ( SDIF2_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .SDIF3_PRDATA                   ( SDIF3_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .MSS_HPMS_READY                 ( MSS_READY_net_0 ),
        .DDR_READY                      (  ),
        .SDIF_READY                     (  ),
        .RESET_N_F2M                    ( CORERESETP_0_RESET_N_F2M ),
        .M3_RESET_N                     (  ),
        .EXT_RESET_OUT                  (  ),
        .MDDR_DDR_AXI_S_CORE_RESET_N    (  ),
        .FDDR_CORE_RESET_N              (  ),
        .SDIF0_CORE_RESET_N             (  ),
        .SDIF0_0_CORE_RESET_N           (  ),
        .SDIF0_1_CORE_RESET_N           (  ),
        .SDIF0_PHY_RESET_N              (  ),
        .SDIF1_CORE_RESET_N             (  ),
        .SDIF1_PHY_RESET_N              (  ),
        .SDIF2_CORE_RESET_N             (  ),
        .SDIF2_PHY_RESET_N              (  ),
        .SDIF3_CORE_RESET_N             (  ),
        .SDIF3_PHY_RESET_N              (  ),
        .SDIF_RELEASED                  (  ),
        .INIT_DONE                      ( INIT_DONE ) 
        );

//--------NAND_FLASH_sb_FABOSC_0_OSC   -   Actel:SgCore:OSC:2.0.101
NAND_FLASH_sb_FABOSC_0_OSC FABOSC_0(
        // Inputs
        .XTL                ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .RCOSC_25_50MHZ_CCC ( FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC ),
        .RCOSC_25_50MHZ_O2F ( FABOSC_0_RCOSC_25_50MHZ_O2F ),
        .RCOSC_1MHZ_CCC     (  ),
        .RCOSC_1MHZ_O2F     (  ),
        .XTLOSC_CCC         (  ),
        .XTLOSC_O2F         (  ) 
        );

//--------nand_apb_wrapper
nand_apb_wrapper nand_apb_wrapper_0(
        // Inputs
        .PCLK      ( FAB_CCC_GL0_net_0 ),
        .PRESETn   ( AND2_0_Y ),
        .init_done ( INIT_DONE ),
        .PADDR     ( CoreAPB3_C0_0_APBmslave0_PADDR_0 ),
        .PSEL      ( CoreAPB3_C0_0_APBmslave0_PSELx ),
        .PENABLE   ( CoreAPB3_C0_0_APBmslave0_PENABLE ),
        .PWRITE    ( CoreAPB3_C0_0_APBmslave0_PWRITE ),
        .PWDATA    ( CoreAPB3_C0_0_APBmslave0_PWDATA ),
        .nand_rnb  ( nand_rnb ),
        .nand_rnb2 ( nand_rnb2 ),
        // Outputs
        .PRDATA    ( CoreAPB3_C0_0_APBmslave0_PRDATA ),
        .PREADY    ( CoreAPB3_C0_0_APBmslave0_PREADY ),
        .PSLVERR   ( CoreAPB3_C0_0_APBmslave0_PSLVERR ),
        .nand_cle  ( nand_cle_net_0 ),
        .nand_ale  ( nand_ale_net_0 ),
        .nand_nwe  ( nand_nwe_net_0 ),
        .nand_nwp  ( nand_nwp_net_0 ),
        .nand_nce  ( nand_nce_net_0 ),
        .nand_nce2 ( nand_nce2_net_0 ),
        .nand_nre  ( nand_nre_net_0 ),
        // Inouts
        .nand_data ( { nand_data_const_net_0 , nand_data } ) 
        );

//--------NAND_FLASH_sb_MSS
NAND_FLASH_sb_MSS NAND_FLASH_sb_MSS_0(
        // Inputs
        .MCCC_CLK_BASE          ( FAB_CCC_GL0_net_0 ),
        .MMUART_0_RXD           ( MMUART_0_RXD ),
        .MCCC_CLK_BASE_PLL_LOCK ( FAB_CCC_LOCK_net_0 ),
        .MSS_RESET_N_F2M        ( CORERESETP_0_RESET_N_F2M ),
        .FIC_2_APB_M_PREADY     ( VCC_net ), // tied to 1'b1 from definition
        .FIC_2_APB_M_PSLVERR    ( GND_net ), // tied to 1'b0 from definition
        .FIC_2_APB_M_PRDATA     ( FIC_2_APB_M_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .FIC_0_APB_M_PRDATA     ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PRDATA ),
        .FIC_0_APB_M_PREADY     ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PREADY ),
        .FIC_0_APB_M_PSLVERR    ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PSLVERR ),
        // Outputs
        .MMUART_0_TXD           ( MMUART_0_TXD_net_0 ),
        .MSS_RESET_N_M2F        ( NAND_FLASH_sb_MSS_TMP_0_MSS_RESET_N_M2F ),
        .FIC_2_APB_M_PRESET_N   ( NAND_FLASH_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N ),
        .FIC_2_APB_M_PCLK       (  ),
        .FIC_2_APB_M_PWRITE     (  ),
        .FIC_2_APB_M_PENABLE    (  ),
        .FIC_2_APB_M_PSEL       (  ),
        .FIC_2_APB_M_PADDR      (  ),
        .FIC_2_APB_M_PWDATA     (  ),
        .FIC_0_APB_M_PADDR      ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PADDR ),
        .FIC_0_APB_M_PSEL       ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PSELx ),
        .FIC_0_APB_M_PWRITE     ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PWRITE ),
        .FIC_0_APB_M_PENABLE    ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PENABLE ),
        .FIC_0_APB_M_PWDATA     ( NAND_FLASH_sb_MSS_0_FIC_0_APB_MASTER_PWDATA ) 
        );

//--------SYSRESET
SYSRESET SYSRESET_POR(
        // Inputs
        .DEVRST_N         ( DEVRST_N ),
        // Outputs
        .POWER_ON_RESET_N ( POWER_ON_RESET_N_net_0 ) 
        );


endmodule
