//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
//-- Title						: ONFI compliant NAND interface
//-- File							: io_unit.v
//-- Author						: Ali Murabbi
//-------------------------------------------------------------------------------------------------
//-- Description:
//-- This file implements data IO unit of the controller.
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------



`include "onfi_package.v"

module io_unit #(
    parameter io_type = IO_READ
) (
    input wire clk,
    input wire nreset,        
    input wire activate,
    input wire [15:0] data_in,
    output wire io_ctrl,
    output wire [15:0] data_out,
    output wire busy,
    output wire initialized  
);

localparam [2:0] IO_INIT = 3'b000;    
localparam [2:0] IO_IDLE = 3'b001;    
localparam [2:0] IO_HOLD = 3'b010;
localparam [2:0] IO_DELAY = 3'b011;

reg [2:0] state = IO_INIT;            
reg [2:0] n_state = IO_INIT;          
reg signed [31:0] delay = 0;
reg [15:0] data_reg = 16'h0000;       
reg init_complete = 1'b0;            
reg [3:0] init_counter = 4'h0;        


assign busy = (state != IO_IDLE) || !init_complete;
assign initialized = init_complete;
assign data_out = ((io_type == IO_WRITE && state != IO_IDLE && init_complete) || 
                   (io_type == IO_READ && init_complete)) ? data_reg : 16'h0000;
assign io_ctrl = (state == IO_DELAY && n_state == IO_HOLD && init_complete) ? 1'b0 : 1'b1;

always @(posedge clk or negedge nreset) begin
    if (!nreset) begin
        state <= IO_INIT;
        n_state <= IO_INIT;
        delay <= 0;
        data_reg <= 16'h0000;
        init_complete <= 1'b0;
        init_counter <= 4'h0;
    end else begin
        case (state)
            IO_INIT: begin
                if (init_counter < 4'hF) begin
                    init_counter <= init_counter + 1;
                    data_reg <= 16'h0000;
                    delay <= 0;
                    n_state <= IO_INIT;
                end else begin
                    init_complete <= 1'b1;
                    state <= IO_IDLE;
                    n_state <= IO_IDLE;
                end
            end
            
            IO_IDLE: begin
                if (init_complete) begin
                    if (io_type == IO_WRITE) begin
                        data_reg <= data_in;
                    end
                    if (activate) begin
                        if (io_type == IO_WRITE) begin
                            delay <= t_wp;
                        end else begin
                            delay <= t_rea;
                        end
                        n_state <= IO_HOLD;
                        state <= IO_DELAY;
                    end
                end
            end
            
            IO_HOLD: begin
                if (init_complete) begin
                    if (io_type == IO_WRITE) begin
                        delay <= t_wh;
                    end else begin
                        delay <= t_reh;
                    end
                    n_state <= IO_IDLE;
                    state <= IO_DELAY;
                end
            end
            
            IO_DELAY: begin
                if (init_complete) begin
                    if (delay > 1) begin
                        delay <= delay - 1;
                        if (delay == 2 && io_type == IO_READ) begin
                            data_reg <= data_in;
                        end
                    end else begin
                        state <= n_state;
                    end
                end
            end
            
            default: begin
                state <= IO_INIT;
                init_complete <= 1'b0;
                init_counter <= 4'h0;
            end
        endcase
    end
end

endmodule