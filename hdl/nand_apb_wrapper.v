//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
//-- Title							: ONFI compliant NAND interface
//-- File							: nand_apb_wrapper.v
//-- Author						: Ali Murabbi
//-------------------------------------------------------------------------------------------------
//-- Description:
//-- The nand_apb_wrapper is the top most entity of this nand flash interface.
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------



module nand_apb_wrapper (

    input  wire        PCLK,
    input  wire        PRESETn,
    input  wire        init_done,
    input  wire [15:0] PADDR,
    input  wire        PSEL,
    input  wire        PENABLE,
    input  wire        PWRITE,
    input  wire [31:0] PWDATA,
    output wire [31:0] PRDATA,
    output reg         PREADY,
    output wire        PSLVERR,

    output wire        nand_cle,
    output wire        nand_ale,
    output wire        nand_nwe,
    output wire        nand_nwp,
    output wire        nand_nce,
    output wire        nand_nce2,
    output wire        nand_nre,
    input  wire        nand_rnb/* synthesis syn_keep = 1*/,
    input wire         nand_rnb2/*synthesis syn_keep = 1*/,
    inout  wire [15:0] nand_data

);


    
    localparam ADDR_BITS       = 4;
    localparam DATA_REG_ADDR   = {{(16-ADDR_BITS){1'b0}}, 4'h0};
    localparam CMD_REG_ADDR    = {{(16-ADDR_BITS){1'b0}}, 4'h4};
    localparam STATUS_REG_ADDR = {{(16-ADDR_BITS){1'b0}}, 4'hC};

    reg        core_activate;
    reg  [7:0] core_cmd_in;
    reg  [7:0] core_data_in;
    wire [7:0] core_data_out;
    wire       core_busy;
    wire       core_enable; 

    wire       apb_write_strobe;
    wire       apb_read_strobe;
    wire       is_data_reg_sel;
    wire       is_cmd_reg_sel;
    wire       is_status_reg_sel;

    reg  [31:0] prdata_reg;
    reg        trigger_activate_next_cycle;
    reg apb_start = 0;
    
    assign led_out = apb_start;
    assign apb_write_strobe = PSEL & PENABLE & PWRITE;
    assign apb_read_strobe  = PSEL & PENABLE & ~PWRITE;

    assign is_data_reg_sel   = (PADDR[ADDR_BITS-1:0] == DATA_REG_ADDR[ADDR_BITS-1:0]);
    assign is_cmd_reg_sel    = (PADDR[ADDR_BITS-1:0] == CMD_REG_ADDR[ADDR_BITS-1:0]);
    assign is_status_reg_sel = (PADDR[ADDR_BITS-1:0] == STATUS_REG_ADDR[ADDR_BITS-1:0]);

    assign PSLVERR = 1'b0;
    
    assign core_enable = ~apb_start;

    
    
    always @(posedge PCLK) begin
        if (!PRESETn) begin
            core_cmd_in   <= 8'h00;
            core_data_in  <= 8'h00;
            core_activate <= 1'b0;
            trigger_activate_next_cycle <= 1'b0;
        end else begin
            if (!init_done) begin
                core_cmd_in   <= 8'h00;
                core_data_in  <= 8'h00;
                core_activate <= 1'b0;
                apb_start <= 1'b0;
                trigger_activate_next_cycle <= 1'b0;
            end 
            else begin
                apb_start <= 1'b1;
                core_activate <= trigger_activate_next_cycle;

                trigger_activate_next_cycle <= 1'b0;


                if (apb_write_strobe) begin
                    PREADY <= 1'b1;
                    if (is_cmd_reg_sel) begin
                        core_cmd_in <= PWDATA[7:0];
                        trigger_activate_next_cycle <= 1'b1;
                        
                    end
                    else if (is_data_reg_sel) begin
                        core_data_in <= PWDATA[7:0];
                    end
                    repeat(1)
                        @(posedge PCLK);
                        
                    PREADY <= 1'b0;
                    
                end
                
                if(apb_read_strobe && (is_status_reg_sel || is_data_reg_sel)&& PSEL) begin
                    PREADY <= 1'b1;
                    
                    repeat(1)
                        @(posedge PCLK);
                    
                    PREADY <= 1'b0;
                end
            end
        end
    end

    always @(*) begin
        prdata_reg = 32'h0; 
        if (PSEL) begin
            if (is_status_reg_sel) begin
                prdata_reg = {31'b0, core_busy};
                
            end
            else if (is_data_reg_sel) begin
                prdata_reg = {24'b0, core_data_out};
            end
        
        
        end
    end

    assign PRDATA = prdata_reg;

    nand_master u_nand_master (
        .clk        (PCLK),
        .nreset     (PRESETn),
        .enable     (core_enable),
        .activate   (core_activate),
        .cmd_in     (core_cmd_in),
        .data_in    (core_data_in),
        .data_out   (core_data_out),
        .busy       (core_busy),
        .nand_cle   (nand_cle),
        .nand_ale   (nand_ale),
        .nand_nwe   (nand_nwe),
        .nand_nwp   (nand_nwp),
        .nand_nce   (nand_nce),
        .nand_nce2  (nand_nce2),
        .nand_nre   (nand_nre),
        .nand_rnb_in   (nand_rnb),
        .nand_rnb2_in (nand_rnb2),
        .nand_data  (nand_data)
    );

endmodule
