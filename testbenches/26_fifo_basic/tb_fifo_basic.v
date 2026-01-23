`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2026 18:48:46
// Design Name: 
// Module Name: tb_fifo_basic
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


module tb_fifo_basic;

    reg clk;
    reg rst;
    reg wr_en;
    reg rd_en;
    reg [7:0] din;
    wire [7:0] dout;
    wire full;
    wire empty;

    fifo_basic uut (
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .din(din),
        .dout(dout),
        .full(full),
        .empty(empty)
    );

    // Clock: 10ns period
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        wr_en = 0;
        rd_en = 0;
        din = 0;

        #10 rst = 0;

        // Write data
        #10 wr_en = 1; din = 8'hA1;
        #10 din = 8'hB2;
        #10 din = 8'hC3;
        #10 wr_en = 0;

        // Read data
        #10 rd_en = 1;
        #30 rd_en = 0;

        #20 $stop;
    end

endmodule
