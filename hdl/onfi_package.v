//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
//-- Title						: ONFI compliant NAND interface
//-- File							: onfi_package.v
//-- Author						: Ali Murabbi
//-------------------------------------------------------------------------------------------------
//-- Description:
//-- This file contains clock cycle duration definition, delay timing constants as well as 
//-- definition of FSM states and types used in the module.
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------


// Clock cycle length in ns
// IMPORTANT!!! The 'clock_cycle' is configured for 100MHz, change it appropriately!
parameter real clock_cycle = 10.0;

// NAND interface delays (in clock cycles)
parameter integer t_cls   = 50.0 / clock_cycle;
parameter integer t_clh   = 20.0  / clock_cycle;
parameter integer t_wp    = 50.0 / clock_cycle;
parameter integer t_wh    = 30.0  / clock_cycle;
parameter integer t_wc    = 100.0 / clock_cycle;
parameter integer t_ds    = 30.0  / clock_cycle;
parameter integer t_dh    = 20.0  / clock_cycle;
parameter integer t_als   = 50.0 / clock_cycle;
parameter integer t_alh   = 20.0  / clock_cycle;
parameter integer t_rr    = 40.0 / clock_cycle;
parameter integer t_rea   = 40.0 / clock_cycle;
parameter integer t_rp    = 50.0 / clock_cycle;
parameter integer t_reh   = 30.0  / clock_cycle;
parameter integer t_wb    = 200.0/ clock_cycle;
parameter integer t_rst   = 5000.0/ clock_cycle;
parameter integer t_bers  = 700000.0 / clock_cycle;
parameter integer t_whr   = 120.0 / clock_cycle;
parameter integer t_prog  = 600000.0 / clock_cycle;
parameter integer t_adl   = 200.0 / clock_cycle;
parameter integer t_r     = 35000.0/clock_cycle;

// Generic type parameters
parameter LATCH_CMD = 0;
parameter LATCH_ADDR = 1;

parameter IO_READ = 0;
parameter IO_WRITE = 1;

// Master FSM state definitions
parameter [5:0]
    M_IDLE                      = 6'd0,
    M_RESET                     = 6'd1,
    M_WAIT                      = 6'd2,
    M_DELAY                     = 6'd3,
    M_NAND_RESET                = 6'd4,
    M_NAND_READ_PARAM_PAGE      = 6'd5,
    M_NAND_READ_ID              = 6'd6,
    M_NAND_BLOCK_ERASE          = 6'd7,
    M_NAND_READ_STATUS          = 6'd8,
    M_NAND_READ                 = 6'd9,
    M_NAND_READ_8               = 6'd10, // Note: Not used in nand_master logic
    M_NAND_READ_16              = 6'd11, // Note: Not used in nand_master logic
    M_NAND_PAGE_PROGRAM         = 6'd12,
    MI_GET_STATUS               = 6'd13,
    MI_CHIP1_ENABLE              = 6'd14,
    MI_CHIP_DISABLE             = 6'd15,
    MI_WRITE_PROTECT            = 6'd16,
    MI_WRITE_ENABLE             = 6'd17,
    MI_RESET_INDEX              = 6'd18,
    MI_GET_ID_BYTE              = 6'd19,
    MI_GET_PARAM_PAGE_BYTE      = 6'd20,
    MI_GET_DATA_PAGE_BYTE       = 6'd21,
    MI_SET_DATA_PAGE_BYTE       = 6'd22,
    MI_GET_CURRENT_ADDRESS_BYTE = 6'd23,
    MI_SET_CURRENT_ADDRESS_BYTE = 6'd24,
    MI_BYPASS_ADDRESS           = 6'd25,
    MI_BYPASS_COMMAND           = 6'd26,
    MI_BYPASS_DATA_WR           = 6'd27,
    MI_BYPASS_DATA_RD           = 6'd28,
    MI_CHIP2_ENABLE             = 6'd29;
    
    
// Master FSM substate definitions
parameter [3:0]
    MS_BEGIN            = 4'd0,
    MS_SUBMIT_COMMAND   = 4'd1,
    MS_SUBMIT_COMMAND1  = 4'd2,
    MS_SUBMIT_ADDRESS   = 4'd3,
    MS_WRITE_DATA0      = 4'd4,
    MS_WRITE_DATA1      = 4'd5,
    MS_WRITE_DATA2      = 4'd6,
    MS_WRITE_DATA3      = 4'd7,
    MS_READ_DATA0       = 4'd8,
    MS_READ_DATA1       = 4'd9,
    MS_READ_DATA2       = 4'd10,
    MS_DELAY            = 4'd11,
    MS_WAIT             = 4'd12,
    MS_END              = 4'd13,
    MS_WAIT_tRR        = 4'd14;

parameter integer max_page_idx = 8640;

