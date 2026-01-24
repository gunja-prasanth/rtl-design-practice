`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2026 11:52:01
// Design Name: 
// Module Name: tb_fifo_advanced
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


module tb_fifo_advanced;

    reg clk;
    reg rst;
    reg wr_en;
    reg rd_en;
    reg [7:0] din;
    wire [7:0] dout;
    wire full, empty, almost_full, almost_empty;

    fifo_advanced #(
        .DATA_WIDTH(8),
        .DEPTH(16)
    ) uut (
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .din(din),
        .dout(dout),
        .full(full),
        .empty(empty),
        .almost_full(almost_full),
        .almost_empty(almost_empty)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        wr_en = 0;
        rd_en = 0;
        din = 0;

        #10 rst = 0;

        
        repeat (14) begin
            #10 wr_en = 1;
            din = din + 1;
        end
        #10 wr_en = 0;

       
        repeat (10) begin
            #10 rd_en = 1;
        end
        #10 rd_en = 0;

        #50 $stop;
    end

endmodule
