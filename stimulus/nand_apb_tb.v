`timescale 1ns / 1ps

module tb_nand_apb_wrapper;

    localparam CLK_PERIOD = 10;

    
    reg        PCLK;
    reg        PRESETn;
    reg        init_done;
    reg [15:0] PADDR;
    reg        PSEL;
    reg        PENABLE;
    reg        PWRITE;
    reg [31:0] PWDATA;
    reg        nand_rnb;
    reg        nand_rnb2;
    wire [31:0] PRDATA;
    wire        PREADY;
    wire        PSLVERR;
    wire        nand_cle;
    wire        nand_ale;
    wire        nand_nwe;
    wire        nand_nwp;
    wire        nand_nce;
    wire        nand_nce2;
    wire        nand_nre;
    reg  [15:0] nand_data_tb;
    wire [15:0] nand_data;
    
    wire activate_debug;
    wire[7:0] cmd_in_debug;
    wire[7:0] data_in_debug;
    
    reg oe = 0;
    
    // Address map for apb wrapper
    
    localparam DATA_REG_ADDR   = 16'h00;
    localparam CMD_REG_ADDR    = 16'h04;
    localparam STATUS_REG_ADDR = 16'h0C;
    
    assign nand_data = oe?nand_data_tb:16'hzzzz;

    nand_apb_wrapper uut (
        .PCLK(PCLK),
        .PRESETn(PRESETn),
        .init_done(init_done),
        .PADDR(PADDR),
        .PSEL(PSEL),
        .PENABLE(PENABLE),
        .PWRITE(PWRITE),
        .PWDATA(PWDATA),
        .PRDATA(PRDATA),
        .PREADY(PREADY),
        .PSLVERR(PSLVERR),
        .nand_cle(nand_cle),
        .nand_ale(nand_ale),
        .nand_nwe(nand_nwe),
        .nand_nwp(nand_nwp),
        .nand_nce(nand_nce),
        .nand_nce2(nand_nce2),
        .nand_nre(nand_nre),
        .nand_rnb(nand_rnb),
        .nand_rnb2(nand_rnb2),
        .nand_data(nand_data)

    );
    
    always @(negedge nand_nre) begin
        oe <= 1'b0;
        nand_data_tb = 16'h0056;
    end
    
    always @(posedge nand_nre) begin
        oe<= 1'b0;
    end
    always #(CLK_PERIOD/2) PCLK = ~PCLK;

    initial begin
        PCLK      = 0;
        PRESETn   = 0;
        init_done = 0;
        PADDR     = 0;
        PSEL      = 0;
        PENABLE   = 0;
        PWRITE    = 0;
        PWDATA    = 0;
        nand_rnb  = 1;
        nand_rnb2 = 1;
        
        #50;
        PRESETn = 1;
        #1000;
        init_done = 1;
        
        apb_write(CMD_REG_ADDR,32'h00);
        wait_for_not_busy();
        
        apb_write(CMD_REG_ADDR,32'h0d);
        wait_for_not_busy();
       
        apb_write(CMD_REG_ADDR,32'h09);
        wait_for_not_busy();
        
        apb_write(CMD_REG_ADDR, 32'h01);
        wait_for_not_busy();
        
        apb_write(CMD_REG_ADDR, 32'h03);
        wait_for_not_busy();
        
        for (integer i = 0; i < 5; i = i + 1) begin
            apb_write(CMD_REG_ADDR, 32'h0E);
            simulate_busy(15);
            wait_for_not_busy();
            
            apb_read(DATA_REG_ADDR);
            #(CLK_PERIOD * 2);
        end
        
        
        
        apb_write(CMD_REG_ADDR,32'h00);
        wait_for_not_busy();
        
        apb_write(CMD_REG_ADDR,32'h0d);
        wait_for_not_busy();
       
        apb_write(CMD_REG_ADDR,32'd24);
        wait_for_not_busy();
        
        apb_write(CMD_REG_ADDR, 32'h01);
        wait_for_not_busy();
        
        apb_write(CMD_REG_ADDR, 32'h03);
        wait_for_not_busy();
        
        for (integer i = 0; i < 5; i = i + 1) begin
            apb_write(CMD_REG_ADDR, 32'h0E);
            simulate_busy(15);
            wait_for_not_busy();
            
            apb_read(DATA_REG_ADDR);
            #(CLK_PERIOD * 2);
        end
        
        apb_write(CMD_REG_ADDR, 32'd10);
        wait_for_not_busy();
        
        apb_write(CMD_REG_ADDR,32'h0d);
        wait_for_not_busy();
        
        apb_write(DATA_REG_ADDR, 32'h76);
        wait_for_not_busy();
        apb_write(CMD_REG_ADDR, 32'h11);
        wait_for_not_busy();
        
        apb_write(DATA_REG_ADDR, 32'h77);
        wait_for_not_busy();
        apb_write(CMD_REG_ADDR, 32'h11);
        wait_for_not_busy();
        
        apb_write(DATA_REG_ADDR, 32'h78);
        wait_for_not_busy();
        apb_write(CMD_REG_ADDR, 32'h11);
        wait_for_not_busy();
        
        apb_write(DATA_REG_ADDR, 32'h79);
        wait_for_not_busy();
        apb_write(CMD_REG_ADDR, 32'h11);
        wait_for_not_busy();
        
        apb_write(CMD_REG_ADDR, 32'h0d);
        apb_write(CMD_REG_ADDR, 32'h07);
        
        wait_for_not_busy();
        
        apb_write(CMD_REG_ADDR, 32'h02);
        wait_for_not_busy();
        
        apb_write(CMD_REG_ADDR, 32'h06);
        wait_for_not_busy();
        
        
    end

    task apb_write(input [15:0] addr, input [31:0] data);
        @(negedge PCLK);
        PADDR   <= addr;
        PWDATA  <= data;
        PSEL    <= 1'b1;
        PWRITE  <= 1'b1;
        @(negedge PCLK);
        PENABLE <= 1'b1;
        @(negedge PCLK);
        PSEL    <= 1'b0;
        PENABLE <= 1'b0;
        PWRITE  <= 1'b0;
    endtask

    task apb_read(input [15:0] addr);
        @(negedge PCLK);
        PADDR   <= addr;
        PSEL    <= 1'b1;
        PWRITE  <= 1'b0;
        @(negedge PCLK);
        PENABLE <= 1'b1;
        @(negedge PCLK);


        PSEL    <= 1'b0;
        PENABLE <= 1'b0;
    endtask
    
    task simulate_busy(input integer busy_cycles);
        @(negedge PCLK);
        nand_rnb <= 1'b0;
        #(CLK_PERIOD * busy_cycles);
        nand_rnb <= 1'b1; 
    endtask

    task wait_for_not_busy;
        automatic bit is_busy = 1;
        
        while (is_busy) begin
            @(negedge PCLK);
            PADDR   <= STATUS_REG_ADDR;
            PSEL    <= 1'b1;
            PWRITE  <= 1'b0;
            @(negedge PCLK);
            PENABLE <= 1'b1;
            @(negedge PCLK);
            is_busy = PRDATA[0];
            PSEL    <= 1'b0;
            PENABLE <= 1'b0;
        end
    endtask

endmodule
