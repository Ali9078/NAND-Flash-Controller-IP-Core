//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
//-- Title						: ONFI compliant NAND interface
//-- File							: latch_unit.v
//-- Author						: Ali Murabbi
//-------------------------------------------------------------------------------------------------
//-- Description:
//-- This file implements command/address latch component of the NAND controller, which takes 
//-- care of dispatching commands to a NAND chip.
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------


`include "onfi_package.v"

module latch_unit #(
    parameter latch_type = LATCH_CMD
) (
    input wire clk,
    input wire nreset,          
    input wire activate,
    input wire [15:0] data_in,
    output wire latch_ctrl,
    output wire write_enable,
    output wire busy,
    output wire [15:0] data_out,
    output wire initialized      
);

localparam [2:0] LATCH_INIT = 3'b000;    
localparam [2:0] LATCH_IDLE = 3'b001;    
localparam [2:0] LATCH_HOLD = 3'b010;
localparam [2:0] LATCH_WAIT = 3'b011;
localparam [2:0] LATCH_DELAY = 3'b100;

reg [2:0] state = LATCH_INIT;             
reg [2:0] n_state = LATCH_INIT;           
reg signed [31:0] delay = 0;
reg init_complete = 1'b0;                 
reg [3:0] init_counter = 4'h0;            

assign busy = (state != LATCH_IDLE) || !init_complete;
assign initialized = init_complete;
assign latch_ctrl = ((state == LATCH_HOLD) ||
                     (state == LATCH_DELAY && (n_state == LATCH_HOLD || n_state == LATCH_WAIT))) && init_complete;
assign write_enable = (state == LATCH_DELAY && n_state == LATCH_HOLD && init_complete) ? 1'b0 : 1'b1;
assign data_out = (state != LATCH_IDLE && state != LATCH_WAIT && n_state != LATCH_IDLE && init_complete) ? data_in : 16'h0000;



always @(posedge clk or negedge nreset) begin
    if (!nreset) begin
        state <= LATCH_INIT;
        n_state <= LATCH_INIT;
        delay <= 0;
        init_complete <= 1'b0;
        init_counter <= 4'h0;
    end else begin
        case (state)
            LATCH_INIT: begin
                if (init_counter < 4'hF) begin
                    init_counter <= init_counter + 1;
                    delay <= 0;
                    n_state <= LATCH_INIT;
                end else begin
                    init_complete <= 1'b1;
                    state <= LATCH_IDLE;
                    n_state <= LATCH_IDLE;
                end
            end
            
            LATCH_IDLE: begin
                if (init_complete && activate) begin
                    n_state <= LATCH_HOLD;
                    state <= LATCH_DELAY;
                    delay <= t_wp;
                end
            end
            
            LATCH_HOLD: begin
                if (init_complete) begin
                    if (latch_type == LATCH_CMD) begin
                        delay <= t_clh;
                    end else begin
                        delay <= t_wh;
                    end
                    n_state <= LATCH_WAIT;
                    state <= LATCH_DELAY;
                end
            end
            
            LATCH_WAIT: begin
                if (init_complete) begin
                    if (latch_type == LATCH_CMD) begin
                        state <= LATCH_IDLE;
                        n_state <= LATCH_IDLE;
                    end else begin
                        state <= LATCH_IDLE;
                        n_state <= LATCH_IDLE;
                    end
                end
            end
            
            LATCH_DELAY: begin
                if (init_complete) begin
                    if (delay > 1) begin
                        delay <= delay - 1;
                    end else begin
                        state <= n_state;
                    end
                end
            end
            
            default: begin
                state <= LATCH_INIT;
                init_complete <= 1'b0;
                init_counter <= 4'h0;
            end
        endcase
    end
end

endmodule