`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2026 15:38:43
// Design Name: 
// Module Name: tb_alu_4bit
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


module tb_alu_4bit;

    reg  [3:0] a;
    reg  [3:0] b;
    reg  [1:0] sel;
    wire [3:0] result;
    wire carry;

    alu_4bit uut (
        .a(a),
        .b(b),
        .sel(sel),
        .result(result),
        .carry(carry)
    );

    initial begin
        
        a = 4'b0011; b = 4'b0010; sel = 2'b00; #10;

        
        a = 4'b0100; b = 4'b0001; sel = 2'b01; #10;

      
        a = 4'b1100; b = 4'b1010; sel = 2'b10; #10;

     
        a = 4'b1100; b = 4'b1010; sel = 2'b11; #10;

        #10 $stop;
    end

endmodule

