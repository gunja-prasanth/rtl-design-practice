`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2026 16:07:47
// Design Name: 
// Module Name: tb_vending_machine_fsm
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

module tb_vending_machine_fsm;

    reg clk;
    reg reset;
    reg coin_5;
    reg coin_10;
    wire dispense;

    // Instantiate DUT
    vending_machine_fsm dut (
        .clk(clk),
        .reset(reset),
        .coin_5(coin_5),
        .coin_10(coin_10),
        .dispense(dispense)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        // Initial values
        clk     = 0;
        reset   = 1;
        coin_5  = 0;
        coin_10 = 0;

        // Release reset
        #12 reset = 0;

        // -------- Test Case 1: ?5 + ?10 = DISPENSE --------
        #10 coin_5 = 1;      // insert ?5
        #10 coin_5 = 0;

        #20 coin_10 = 1;     // insert ?10 ? DISPENSE
        #10 coin_10 = 0;

        // -------- Test Case 2: ?10 + ?5 = DISPENSE --------
        #30 coin_10 = 1;     // insert ?10
        #10 coin_10 = 0;

        #20 coin_5 = 1;      // insert ?5 ? DISPENSE
        #10 coin_5 = 0;

        // -------- Test Case 3: ?5 + ?5 + ?5 = DISPENSE --------
        #30 coin_5 = 1;      // ?5
        #10 coin_5 = 0;

        #20 coin_5 = 1;      // ?10 total
        #10 coin_5 = 0;

        #20 coin_5 = 1;      // ?15 ? DISPENSE
        #10 coin_5 = 0;

        #50 $finish;
    end

endmodule

