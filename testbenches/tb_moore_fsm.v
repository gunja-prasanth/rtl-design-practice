`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2026 11:22:16
// Design Name: 
// Module Name: tb_moore_fsm
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


`timescale 1ns/1ps

module tb_moore_fsm;

    reg clk;
    reg rst;
    reg in;
    wire out;

    // Instantiate the DUT (Device Under Test)
    moore_fsm uut (
        .clk(clk),
        .rst(rst),
        .in(in),
        .out(out)
    );

    // Clock generation: 10 ns period
    always #5 clk = ~clk;

    initial begin
        // Initial values
        clk = 0;
        rst = 1;
        in  = 0;

        // Hold reset for some time
        #10;
        rst = 0;

        // Apply inputs
        #10 in = 1;   // should move to S1 at next clock
        #10 in = 0;   // should move back to S0 at next clock
        #10 in = 1;   // move to S1
        #10 in = 1;   // stay in S1
        #10 in = 0;   // move to S0

        // Finish simulation
        #20;
        $finish;
    end

endmodule
