//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
//-- Title							: ONFI compliant NAND interface
//-- File							: nand_master.v
//-- Author						: Ali Murabbi
//-------------------------------------------------------------------------------------------------
//-- Description:
//-- The nand_master provides very simple interface and short and easy to use set of commands.
//-- It is important to mention, that the controller takes care of delays and proper NAND command
//-- sequences.
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------


`include "onfi_package.v"

module nand_master (
    // System clock
    input wire          clk,
    input wire          enable,
    // NAND chip control hardware interface
    output wire         nand_cle,
    output wire         nand_ale,
    output wire         nand_nwe,
    output reg          nand_nwp = 1'b0,
    output reg          nand_nce = 1'b1,
    output reg          nand_nce2 = 1'b1,
    output wire         nand_nre,
    input wire          nand_rnb_in,
    input wire          nand_rnb2_in,
    // NAND chip data hardware interface
    inout wire [15:0]   nand_data,
    // Component interface
    input wire          nreset,
    output reg [7:0]    data_out,
    input wire [7:0]    data_in,
    output wire         busy,
    input wire          activate,
    input wire [7:0]    cmd_in,
    output wire[31:0]   page_idx_debug
    
);


    wire nand_rnb;
    
    assign nand_rnb = ~nand_nce2 ? nand_rnb2_in : nand_rnb_in;
    // Latch unit signals
    wire cle_activate, cle_latch_ctrl, cle_write_enable, cle_busy;
    reg  [15:0] cle_data_in;
    wire [15:0] cle_data_out;
    wire ale_activate, ale_latch_ctrl, ale_write_enable, ale_busy;
    reg  [15:0] ale_data_in;
    wire [15:0] ale_data_out;

    // IO Unit signals
    wire io_rd_activate, io_rd_io_ctrl, io_rd_busy;
    wire [15:0] io_rd_data_in, io_rd_data_out;
    wire io_wr_activate, io_wr_io_ctrl, io_wr_busy;
    reg  [15:0] io_wr_data_in;
    wire [15:0] io_wr_data_out;

    // FSM signals
    reg [5:0]  state = M_RESET;
    reg [5:0]  n_state = M_RESET;
    reg [3:0]  substate = MS_BEGIN;
    
    reg signed [31:0] delay = 0;
    reg signed [31:0] byte_count = 0;
    reg signed [31:0] page_idx = 0;

    assign page_idx_debug = page_idx;
    // Internal buffers
    reg [7:0] page_data [0:8639];
    reg [7:0] page_param [0:255];
    reg [7:0] chip_id [0:4];
    reg [7:0] current_address [0:4];

    // Page geometry signals
    reg [31:0] data_bytes_per_page;
    reg [31:0] oob_bytes_per_page;
    reg [31:0] addr_cycles;

    // Status register
    reg [7:0] status = 8'h00;

    // Instantiations
    latch_unit #(.latch_type(LATCH_CMD) ) ACL (
       .activate(cle_activate),.clk(clk),.data_in(cle_data_in),
       .latch_ctrl(cle_latch_ctrl),.write_enable(cle_write_enable),.busy(cle_busy),.data_out(cle_data_out),.nreset(nreset)
    )/*synthesis syn_keep=1 */;

    latch_unit #(.latch_type(LATCH_ADDR) ) AAL (
       .activate(ale_activate),.clk(clk),.data_in(ale_data_in),
       .latch_ctrl(ale_latch_ctrl),.write_enable(ale_write_enable),.busy(ale_busy),.data_out(ale_data_out),.nreset(nreset)
    )/*synthesis syn_keep=1 */;

    io_unit #(.io_type(IO_WRITE) ) IO_WR (
       .clk(clk),.activate(io_wr_activate),.data_in(io_wr_data_in),
       .io_ctrl(io_wr_io_ctrl),.busy(io_wr_busy),.data_out(io_wr_data_out),.nreset(nreset)
    )/*synthesis syn_keep=1 */;

    io_unit #(.io_type(IO_READ) ) IO_RD (
       .clk(clk),.activate(io_rd_activate),.data_in(io_rd_data_in),
       .io_ctrl(io_rd_io_ctrl),.busy(io_rd_busy),.data_out(io_rd_data_out),.nreset(nreset)
    )/*synthesis syn_keep=1 */;

    // Combinational Logic
    assign busy = (state == M_IDLE)? 1'b0 : 1'b1;

    assign nand_data = cle_busy? cle_data_out :
                       ale_busy? ale_data_out :
                       io_wr_busy? io_wr_data_out :
                       16'hZZZZ;

    assign io_rd_data_in = nand_data;
    assign nand_cle = cle_latch_ctrl;
    assign nand_ale = ale_latch_ctrl;
    assign nand_nwe = cle_write_enable & ale_write_enable & io_wr_io_ctrl;
    assign nand_nre = io_rd_io_ctrl;

    assign cle_activate = (state == M_NAND_RESET) ||
                          (state == M_NAND_READ_PARAM_PAGE && substate == MS_BEGIN) ||
                          (state == M_NAND_BLOCK_ERASE && substate == MS_BEGIN) ||
                          (state == M_NAND_BLOCK_ERASE && substate == MS_SUBMIT_COMMAND1) ||
                          (state == M_NAND_READ_STATUS && substate == MS_BEGIN) ||
                          (state == M_NAND_READ && substate == MS_BEGIN) ||
                          (state == M_NAND_READ && substate == MS_SUBMIT_COMMAND1) ||
                          (state == M_NAND_PAGE_PROGRAM && substate == MS_BEGIN) ||
                          (state == M_NAND_PAGE_PROGRAM && substate == MS_SUBMIT_COMMAND1) ||
                          (state == M_NAND_READ_ID && substate == MS_BEGIN) ||
                          (state == MI_BYPASS_COMMAND && substate == MS_SUBMIT_COMMAND);

    assign ale_activate = (state == M_NAND_READ_PARAM_PAGE && substate == MS_SUBMIT_COMMAND) ||
                          (state == M_NAND_BLOCK_ERASE && substate == MS_SUBMIT_COMMAND) ||
                          (state == M_NAND_READ && substate == MS_SUBMIT_COMMAND) ||
                          (state == M_NAND_PAGE_PROGRAM && substate == MS_SUBMIT_ADDRESS) ||
                          (state == M_NAND_READ_ID && substate == MS_SUBMIT_COMMAND) ||
                          (state == MI_BYPASS_ADDRESS && substate == MS_SUBMIT_ADDRESS);

    assign io_rd_activate = (state == M_NAND_READ_PARAM_PAGE && substate == MS_READ_DATA0) ||
                            (state == M_NAND_READ_STATUS && substate == MS_READ_DATA0) ||
                            (state == M_NAND_READ && substate == MS_READ_DATA0) ||
                            (state == M_NAND_READ_ID && substate == MS_READ_DATA0) ||
                            (state == MI_BYPASS_DATA_RD && substate == MS_BEGIN);

    assign io_wr_activate = (state == M_NAND_PAGE_PROGRAM && substate == MS_WRITE_DATA3) ||
                            (state == MI_BYPASS_DATA_WR && substate == MS_WRITE_DATA0);

    // Main FSM
    always @(posedge clk or negedge nreset) begin
        reg [31:0] tmp_int;

        if (!nreset) begin
            state <= M_RESET;
        end else if (enable == 1'b0) begin
            case (state)
                M_RESET: begin
                    state <= M_IDLE;
                    substate <= MS_BEGIN;
                    delay <= 0;
                    byte_count <= 0;
                    page_idx <= 0;
                    current_address[0] <= 8'h00;
                    current_address[1] <= 8'h00;
                    current_address[2] <= 8'h00;
                    current_address[3] <= 8'h00;
                    current_address[4] <= 8'h00;
                    data_bytes_per_page <= 32'd8192;
                    oob_bytes_per_page <= 32'd448;
                    addr_cycles <= 32'd5;
                    status <= 8'h08; // Start write protected
                    nand_nce <= 1'b1;
                    nand_nce2 <= 1'b1;
                    nand_nwp <= 1'b0;
                end

                M_IDLE: begin
                    if (activate) begin
                        case (cmd_in)
                            8'd0:  state <= M_RESET;
                            8'd1:  state <= M_NAND_RESET;
                            8'd2:  state <= M_NAND_READ_PARAM_PAGE;
                            8'd3:  state <= M_NAND_READ_ID;
                            8'd4:  state <= M_NAND_BLOCK_ERASE;
                            8'd5:  state <= M_NAND_READ_STATUS;
                            8'd6:  state <= M_NAND_READ;
                            8'd7:  state <= M_NAND_PAGE_PROGRAM;
                            8'd8:  state <= MI_GET_STATUS;
                            8'd9:  state <= MI_CHIP1_ENABLE;
                            8'd10: state <= MI_CHIP_DISABLE;
                            8'd11: state <= MI_WRITE_PROTECT;
                            8'd12: state <= MI_WRITE_ENABLE;
                            8'd13: state <= MI_RESET_INDEX;
                            8'd14: state <= MI_GET_ID_BYTE;
                            8'd15: state <= MI_GET_PARAM_PAGE_BYTE;
                            8'd16: state <= MI_GET_DATA_PAGE_BYTE;
                            8'd17: state <= MI_SET_DATA_PAGE_BYTE;
                            8'd18: state <= MI_GET_CURRENT_ADDRESS_BYTE;
                            8'd19: state <= MI_SET_CURRENT_ADDRESS_BYTE;
                            8'd20: state <= MI_BYPASS_ADDRESS;
                            8'd21: state <= MI_BYPASS_COMMAND;
                            8'd22: state <= MI_BYPASS_DATA_WR;
                            8'd23: state <= MI_BYPASS_DATA_RD;
                            8'd24: state <= MI_CHIP2_ENABLE;
                            
                            default: state <= M_IDLE;
                        endcase
                    end
                end

                M_NAND_RESET: begin
                    cle_data_in <= 16'h00FF;
                    state <= M_WAIT;
                    n_state <= M_IDLE;
                    delay <= t_wb + 8;
                end

                MI_GET_STATUS: begin
                    data_out <= status;
                    state <= M_IDLE;
                end

                MI_CHIP1_ENABLE: begin
                    nand_nce <= 1'b0;
                    nand_nce2 <= 1'b1;
                    state <= M_IDLE;
                    status[2] <= 1'b1;
                end
                

                MI_CHIP_DISABLE: begin
                    nand_nce <= 1'b1;
                    nand_nce2 <= 1'b1;
                    state <= M_IDLE;
                    status[2] <= 1'b0;
                end

                MI_CHIP2_ENABLE: begin
                    nand_nce2 <= 1'b0;
                    nand_nce <= 1'b1;
                    state <= M_IDLE;
                    status[2] <= 1'b1;
                end
                
                MI_WRITE_PROTECT: begin
                    nand_nwp <= 1'b0;
                    status[3] <= 1'b1;
                    state <= M_IDLE;
                end

                MI_WRITE_ENABLE: begin
                    nand_nwp <= 1'b1;
                    status[3] <= 1'b0;
                    state <= M_IDLE;
                end

                MI_RESET_INDEX: begin
                    page_idx <= 0;
                    state <= M_IDLE;
                end

                MI_GET_ID_BYTE: begin
                    if (page_idx < 5) begin
                        data_out <= chip_id[page_idx];
                        page_idx <= page_idx + 1;
                        status[4] <= 1'b0;
                    end else begin
                        data_out <= 8'h00;
                        page_idx <= 0;
                        status[4] <= 1'b1;
                    end
                    state <= M_IDLE;
                end

                MI_GET_PARAM_PAGE_BYTE: begin
                    if (page_idx < 256) begin
                        data_out <= page_param[page_idx];
                        page_idx <= page_idx + 1;
                        status[4] <= 1'b0;
                    end else begin
                        data_out <= 8'h00;
                        page_idx <= 0;
                        status[4] <= 1'b1;
                    end
                    state <= M_IDLE;
                end

                MI_GET_DATA_PAGE_BYTE: begin
                    if (page_idx < data_bytes_per_page + oob_bytes_per_page) begin
                        data_out <= page_data[page_idx];
                        page_idx <= page_idx + 1;
                        status[4] <= 1'b0;
                    end else begin
                        data_out <= 8'h00;
                        page_idx <= 0;
                        status[4] <= 1'b1;
                    end
                    state <= M_IDLE;
                end

                MI_SET_DATA_PAGE_BYTE: begin
                    if (page_idx < data_bytes_per_page + oob_bytes_per_page) begin
                        page_data[page_idx] <= data_in;
                        page_idx <= page_idx + 1;
                        status[4] <= 1'b0;
                    end else begin
                        page_idx <= 0;
                        status[4] <= 1'b1;
                    end
                    state <= M_IDLE;
                end

                MI_GET_CURRENT_ADDRESS_BYTE: begin
                    if (page_idx < addr_cycles) begin
                        data_out <= current_address[page_idx];
                        page_idx <= page_idx + 1;
                        status[4] <= 1'b0;
                    end else begin
                        data_out <= 8'h00;
                        page_idx <= 0;
                        status[4] <= 1'b1;
                    end
                    state <= M_IDLE;
                end

                MI_SET_CURRENT_ADDRESS_BYTE: begin
                    if (page_idx < addr_cycles) begin
                        current_address[page_idx] <= data_in;
                        page_idx <= page_idx + 1;
                        status[4] <= 1'b0;
                    end else begin
                        page_idx <= 0;
                        status[4] <= 1'b1;
                    end
                    state <= M_IDLE;
                end

                M_NAND_PAGE_PROGRAM: begin
                    case (substate)
                        MS_BEGIN: begin
                            cle_data_in <= 16'h0080;
                            substate <= MS_SUBMIT_COMMAND;
                            state <= M_WAIT;
                            n_state <= M_NAND_PAGE_PROGRAM;
                            byte_count <= 0;
                        end
                        MS_SUBMIT_COMMAND: begin
                            byte_count <= byte_count + 1;
                            ale_data_in <= {8'h00, current_address[byte_count]};
                            substate <= MS_SUBMIT_ADDRESS;
                        end
                        MS_SUBMIT_ADDRESS: begin
                            if (byte_count < addr_cycles) begin
                                substate <= MS_SUBMIT_COMMAND;
                            end else begin
                                substate <= MS_WRITE_DATA0;
                            end
                            state <= M_WAIT;
                            n_state <= M_NAND_PAGE_PROGRAM;
                        end
                        MS_WRITE_DATA0: begin
                            delay <= t_adl;
                            state <= M_DELAY;
                            n_state <= M_NAND_PAGE_PROGRAM;
                            substate <= MS_WRITE_DATA1;
                            page_idx <= 0;
                            byte_count <= 0;
                        end
                        MS_WRITE_DATA1: begin
                            byte_count <= byte_count + 1;
                            page_idx <= page_idx + 1;
                            io_wr_data_in <= {8'h00, page_data[page_idx]};
                            if (status[1] == 1'b0) begin
                                substate <= MS_WRITE_DATA3;
                            end else begin
                                substate <= MS_WRITE_DATA2;
                            end
                        end
                        MS_WRITE_DATA2: begin
                            page_idx <= page_idx + 1;
                            io_wr_data_in[15:8] <= page_data[page_idx];
                            substate <= MS_WRITE_DATA3;
                        end
                        MS_WRITE_DATA3: begin
                            if (byte_count < data_bytes_per_page + oob_bytes_per_page) begin
                                substate <= MS_WRITE_DATA1;
                            end else begin
                                substate <= MS_SUBMIT_COMMAND1;
                            end
                            n_state <= M_NAND_PAGE_PROGRAM;
                            state <= M_WAIT;
                        end
                        MS_SUBMIT_COMMAND1: begin
                            cle_data_in <= 16'h0010;
                            n_state <= M_NAND_PAGE_PROGRAM;
                            state <= M_WAIT;
                            substate <= MS_WAIT;
                        end
                        MS_WAIT: begin
                            delay <= t_wb + t_prog;
                            state <= M_DELAY;
                            n_state <= M_NAND_PAGE_PROGRAM;
                            substate <= MS_END;
                            byte_count <= 0;
                            page_idx <= 0;
                        end
                        MS_END: begin
                            state <= M_WAIT;
                            n_state <= M_IDLE;
                            substate <= MS_BEGIN;
                        end
                    endcase
                end

                M_NAND_READ: begin
                    case (substate)
                        MS_BEGIN: begin
                            cle_data_in <= 16'h0000;
                            substate <= MS_SUBMIT_COMMAND;
                            state <= M_WAIT;
                            n_state <= M_NAND_READ;
                            byte_count <= 0;
                        end
                        MS_SUBMIT_COMMAND: begin
                            byte_count <= byte_count + 1;
                            ale_data_in <= {8'h00, current_address[byte_count]};
                            substate <= MS_SUBMIT_ADDRESS;
                        end
                        MS_SUBMIT_ADDRESS: begin
                            if (byte_count < addr_cycles) begin
                                substate <= MS_SUBMIT_COMMAND;
                            end else begin
                                substate <= MS_SUBMIT_COMMAND1;
                            end
                            state <= M_WAIT;
                            n_state <= M_NAND_READ;
                        end
                        MS_SUBMIT_COMMAND1: begin
                            cle_data_in <= 16'h0030;
                            substate <= MS_DELAY;
                            state <= M_WAIT;
                            n_state <= M_NAND_READ;
                        end
                        MS_DELAY: begin
                            delay <= t_wb;
                            substate <= MS_WAIT_tRR;
                            state <= M_WAIT; // M_DELAY commented in original
                            n_state <=  M_NAND_READ;

                        end
                        MS_WAIT_tRR : begin
                            delay <= t_rr;
                            substate <= MS_READ_DATA0;
                            state <= M_WAIT;
                            n_state <= M_NAND_READ;
                            byte_count <= 0;
                            page_idx <= 0;
                        end
                        MS_READ_DATA0: begin
                            byte_count <= byte_count + 1;
                            n_state <= M_NAND_READ;
                            delay <= t_rr;
                            state <= M_WAIT;
                            substate <= MS_READ_DATA1;
                        end
                        MS_READ_DATA1: begin
                            page_data[page_idx] <= io_rd_data_out[7:0];
                            page_idx <= page_idx + 1;
                            if (byte_count == data_bytes_per_page + oob_bytes_per_page && status[1] == 1'b0) begin
                                substate <= MS_END;
                            end else begin
                                if (status[1] == 1'b0) begin
                                    substate <= MS_READ_DATA0;
                                end else begin
                                    substate <= MS_READ_DATA2;
                                end
                            end
                        end
                        MS_READ_DATA2: begin
                            page_idx <= page_idx + 1;
                            page_data[page_idx] <= io_rd_data_out[15:8];
                            if (byte_count == data_bytes_per_page + oob_bytes_per_page) begin
                                substate <= MS_END;
                            end else begin
                                substate <= MS_READ_DATA0;
                            end
                        end
                        MS_END: begin
                            substate <= MS_BEGIN;
                            state <= M_IDLE;
                            byte_count <= 0;
                        end
                    endcase
                end

                M_NAND_READ_STATUS: begin
                    case (substate)
                        MS_BEGIN: begin
                            cle_data_in <= 16'h0070;
                            substate <= MS_SUBMIT_COMMAND;
                            state <= M_WAIT;
                            n_state <= M_NAND_READ_STATUS;
                        end
                        MS_SUBMIT_COMMAND: begin
                            delay <= t_whr;
                            substate <= MS_READ_DATA0;
                            state <= M_DELAY;
                            n_state <= M_NAND_READ_STATUS;
                        end
                        MS_READ_DATA0: begin
                            substate <= MS_READ_DATA1;
                            state <= M_WAIT;
                            n_state <= M_NAND_READ_STATUS;
                        end
                        MS_READ_DATA1: begin
                            data_out <= io_rd_data_out[7:0];
                            state <= M_NAND_READ_STATUS;
                            substate <= MS_END;
                        end
                        MS_END: begin
                            substate <= MS_BEGIN;
                            state <= M_IDLE;
                        end
                    endcase
                end

                M_NAND_BLOCK_ERASE: begin
                    case (substate)
                        MS_BEGIN: begin
                            cle_data_in <= 16'h0060;
                            substate <= MS_SUBMIT_COMMAND;
                            state <= M_WAIT;
                            n_state <= M_NAND_BLOCK_ERASE;
                            byte_count <= 3;
                        end
                        MS_SUBMIT_COMMAND: begin
                            byte_count <= byte_count - 1;
                            ale_data_in <= {8'h00, current_address[5 - byte_count]};
                            substate <= MS_SUBMIT_ADDRESS;
                            state <= M_WAIT;
                            n_state <= M_NAND_BLOCK_ERASE;
                        end
                        MS_SUBMIT_ADDRESS: begin
                            if (0 < byte_count) begin
                                substate <= MS_SUBMIT_COMMAND;
                            end else begin
                                substate <= MS_SUBMIT_COMMAND1;
                            end
                        end
                        MS_SUBMIT_COMMAND1: begin
                            cle_data_in <= 16'h00D0;
                            substate <= MS_END;
                            state <= M_WAIT;
                            n_state <= M_NAND_BLOCK_ERASE;
                        end
                        MS_END: begin
                            n_state <= M_IDLE;
                            delay <= t_wb + t_bers;
                            state <= M_DELAY;
                            substate <= MS_BEGIN;
                            byte_count <= 0;
                        end
                    endcase
                end

                M_NAND_READ_ID: begin
                    case (substate)
                        MS_BEGIN: begin
                            cle_data_in <= 16'h0090;
                            substate <= MS_SUBMIT_COMMAND;
                            state <= M_WAIT;
                            n_state <= M_NAND_READ_ID;
                        end
                        MS_SUBMIT_COMMAND: begin
                            ale_data_in <= 16'h0000;
                            substate <= MS_SUBMIT_ADDRESS;
                            state <= M_WAIT;
                            n_state <= M_NAND_READ_ID;
                        end
                        MS_SUBMIT_ADDRESS: begin
                            delay <= t_wb;
                            state <= M_DELAY;
                            n_state <= M_NAND_READ_ID;
                            substate <= MS_READ_DATA0;
                            byte_count <= 5;
                            page_idx <= 0;
                        end
                        MS_READ_DATA0: begin
                            byte_count <= byte_count - 1;
                            state <= M_WAIT;
                            n_state <= M_NAND_READ_ID;
                            substate <= MS_READ_DATA1;
                        end
                        MS_READ_DATA1: begin
                            chip_id[page_idx] <= io_rd_data_out[7:0];
                            if (0 < byte_count) begin
                                page_idx <= page_idx + 1;
                                substate <= MS_READ_DATA0;
                            end else begin
                                substate <= MS_END;
                            end
                        end
                        MS_END: begin
                            byte_count <= 0;
                            page_idx <= 0;
                            substate <= MS_BEGIN;
                            state <= M_IDLE;
                        end
                    endcase
                end

                M_NAND_READ_PARAM_PAGE: begin
                    case (substate)
                        MS_BEGIN: begin
                            cle_data_in <= 16'h00EC;
                            substate <= MS_SUBMIT_COMMAND;
                            state <= M_WAIT;
                            n_state <= M_NAND_READ_PARAM_PAGE;
                        end
                        MS_SUBMIT_COMMAND: begin
                            ale_data_in <= 16'h0000;
                            substate <= MS_SUBMIT_ADDRESS;
                            state <= M_WAIT;
                            n_state <= M_NAND_READ_PARAM_PAGE;
                        end
                        MS_SUBMIT_ADDRESS: begin
                            delay <= t_wb;
                            state <= M_WAIT; // M_DELAY commented in original
                            n_state <= M_NAND_READ_PARAM_PAGE;
                            substate <= MS_WAIT_tRR;
                        end
                        
                        MS_WAIT_tRR : begin
                            delay <= t_rr;
                            state <= M_WAIT;
                            n_state <= M_NAND_READ_PARAM_PAGE;
                            substate <= MS_READ_DATA0;
                            byte_count <= 256;
                            page_idx <= 0;
                        end
                        MS_READ_DATA0: begin
                            byte_count <= byte_count - 1;
                            state <= M_WAIT;
                            n_state <= M_NAND_READ_PARAM_PAGE;
                            substate <= MS_READ_DATA1;
                        end
                        MS_READ_DATA1: begin
                            page_param[page_idx] <= io_rd_data_out[7:0];
                            if (0 < byte_count) begin
                                page_idx <= page_idx + 1;
                                substate <= MS_READ_DATA0;
                            end else begin
                                substate <= MS_END;
                            end
                        end
                        MS_END: begin
                            byte_count <= 0;
                            page_idx <= 0;
                            substate <= MS_BEGIN;
                            state <= M_IDLE;

                            if (page_param[0] == 8'h4F && page_param[1] == 8'h4E && page_param[2] == 8'h46 && page_param[3] == 8'h49) begin
                                status <= 1'b1;
                                status[1] <= page_param[5];
                                
                                if (page_param[63] == 8'h20) begin // Normal Flash
                                    tmp_int = {page_param[83], page_param[82], page_param[81], page_param[80]};
                                    data_bytes_per_page <= tmp_int;
                                    tmp_int = {16'h0000, page_param[85], page_param[84]};
                                    oob_bytes_per_page <= tmp_int;
                                    addr_cycles <= page_param[101][3:0] + page_param[101][7:4];
                                end else begin // Other Flash
                                    tmp_int = {page_param[82], page_param[81], page_param[80], page_param[79]};
                                    data_bytes_per_page <= tmp_int;
                                    tmp_int = {16'h0000, page_param[84], page_param[83]};
                                    oob_bytes_per_page <= tmp_int;
                                    addr_cycles <= page_param[100][3:0] + page_param[100][7:4];
                                end
                            end
                        end
                    endcase
                end

                M_WAIT: begin
                    if (delay > 1) begin
                        delay <= delay - 1;
                    end else if (~(cle_busy | ale_busy | io_rd_busy | io_wr_busy | ~nand_rnb)) begin
                        state <= n_state;
                    end
                end

                M_DELAY: begin
                    if (delay > 1) begin
                        delay <= delay - 1;
                    end else begin
                        state <= n_state;
                    end
                end

                MI_BYPASS_ADDRESS: begin
                    case (substate)
                        MS_BEGIN: begin
                            ale_data_in <= {8'h00, data_in};
                            substate <= MS_SUBMIT_ADDRESS;
                            state <= M_WAIT;
                            n_state <= MI_BYPASS_ADDRESS;
                        end
                        MS_SUBMIT_ADDRESS: begin
                            delay <= t_wb + t_rr;
                            state <= M_WAIT; // M_DELAY commented in original
                            n_state <= MI_BYPASS_ADDRESS;
                            substate <= MS_END;
                        end
                        MS_END: begin
                            substate <= MS_BEGIN;
                            state <= M_IDLE;
                        end
                    endcase
                end

                MI_BYPASS_COMMAND: begin
                    case (substate)
                        MS_BEGIN: begin
                            cle_data_in <= {8'h00, data_in};
                            substate <= MS_SUBMIT_COMMAND;
                            state <= M_WAIT;
                            n_state <= MI_BYPASS_COMMAND;
                        end
                        MS_SUBMIT_COMMAND: begin
                            delay <= t_wb + t_rr;
                            state <= M_WAIT; // M_DELAY commented in original
                            n_state <= MI_BYPASS_COMMAND;
                            substate <= MS_END;
                        end
                        MS_END: begin
                            substate <= MS_BEGIN;
                            state <= M_IDLE;
                        end
                    endcase
                end

                MI_BYPASS_DATA_WR: begin
                    case (substate)
                        MS_BEGIN: begin
                            io_wr_data_in <= {8'h00, data_in};
                            substate <= MS_WRITE_DATA0;
                            state <= M_WAIT;
                            n_state <= MI_BYPASS_DATA_WR;
                        end
                        MS_WRITE_DATA0: begin
                            state <= M_WAIT;
                            n_state <= M_IDLE;
                            substate <= MS_BEGIN;
                        end
                    endcase
                end

                MI_BYPASS_DATA_RD: begin
                    case (substate)
                        MS_BEGIN: begin
                            substate <= MS_READ_DATA0;
                        end
                        MS_READ_DATA0: begin
                            data_out <= io_rd_data_out[7:0];
                            substate <= MS_BEGIN;
                            state <= M_IDLE;
                        end
                    endcase
                end

                default: begin
                    state <= M_RESET;
                end
            endcase
        end
    end

endmodule