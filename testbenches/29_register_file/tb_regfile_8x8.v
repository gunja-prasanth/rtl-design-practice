`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2026 20:18:11
// Design Name: 
// Module Name: tb_regfile_8x8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_regfile_8x8;

    reg clk;
    reg rst;
    reg we;
    reg [2:0] waddr;
    reg [7:0] wdata;
    reg [2:0] raddr1, raddr2;
    wire [7:0] rdata1, rdata2;

    regfile_8x8 uut (
        .clk(clk),
        .rst(rst),
        .we(we),
        .waddr(waddr),
        .wdata(wdata),
        .raddr1(raddr1),
        .raddr2(raddr2),
        .rdata1(rdata1),
        .rdata2(rdata2)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        we  = 0;
        waddr = 0;
        wdata = 0;
        raddr1 = 0;
        raddr2 = 0;

        #10 rst = 0;

       
        #10 we = 1; waddr = 3'd1; wdata = 8'hAA;
        #10 waddr = 3'd2; wdata = 8'h55;
        #10 we = 0;

       
        #10 raddr1 = 3'd1;
            raddr2 = 3'd2;

        #20 $stop;
    end

endmodule
