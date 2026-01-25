`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2026 17:06:50
// Design Name: 
// Module Name: tb_arbiter_rr
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


module tb_arbiter_rr;

    reg        clk;
    reg        rst;
    reg [3:0]  req;
    wire [3:0] grant;

    arbiter_rr uut (
        .clk   (clk),
        .rst   (rst),
        .req   (req),
        .grant (grant)
    );

    // Clock generation: 10 ns period
    always #5 clk = ~clk;

    initial begin
        // Initial values
        clk = 0;
        rst = 1;
        req = 4'b0000;

        // Apply reset
        #10;
        rst = 0;

        // Test 1: All requesters active
        // Expect round-robin behavior
        #10 req = 4'b1111;
        #80;

        // Test 2: Alternate requesters
        #10 req = 4'b0101;
        #60;

        // Test 3: Single requester
        #10 req = 4'b0010;
        #40;

        // Test 4: No requests
        #10 req = 4'b0000;
        #30;

        $stop;
    end

endmodule
