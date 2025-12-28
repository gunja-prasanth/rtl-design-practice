`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2025 18:05:35
// Design Name: 
// Module Name: tb_universal_gates
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


module tb_universal_gates;

    reg a, b;
    wire y_nand, y_nor, y_xor, y_xnor;

    nand_gate  u1 (.a(a), .b(b), .y(y_nand));
    nor_gate   u2 (.a(a), .b(b), .y(y_nor));
    xor_gate   u3 (.a(a), .b(b), .y(y_xor));
    xnor_gate  u4 (.a(a), .b(b), .y(y_xnor));

    initial begin
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $finish;
    end

endmodule

