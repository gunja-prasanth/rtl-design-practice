`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2026 17:05:18
// Design Name: 
// Module Name: tb_uart_tx
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


module tb_uart_tx;

    reg clk;
    reg rst;
    reg tx_start;
    reg [7:0] tx_data;
    wire tx;
    wire tx_busy;

    uart_tx #(
        .CLK_FREQ(10_000_000),
        .BAUD_RATE(9600)
    ) uut (
        .clk(clk),
        .rst(rst),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx(tx),
        .tx_busy(tx_busy)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        tx_start = 0;
        tx_data = 8'h00;

        #20 rst = 0;

        #20 tx_data = 8'hA5;
            tx_start = 1;

        #10 tx_start = 0;

        #200000 $stop;
    end

endmodule

