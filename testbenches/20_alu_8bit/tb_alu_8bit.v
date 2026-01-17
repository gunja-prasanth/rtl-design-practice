`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2026 21:04:03
// Design Name: 
// Module Name: tb_alu_8bit
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

module tb_alu_8bit;

    reg  [7:0] a;
    reg  [7:0] b;
    reg  [2:0] alu_ctrl;
    wire [7:0] result;
    wire zero;

    alu_8bit dut (
        .a(a),
        .b(b),
        .alu_ctrl(alu_ctrl),
        .result(result),
        .zero(zero)
    );

    initial begin
        // ADD
        a = 8'd10; b = 8'd5; alu_ctrl = 3'b000;
        #10;

        // SUB
        a = 8'd10; b = 8'd3; alu_ctrl = 3'b001;
        #10;

        // AND
        a = 8'b1100_1100; b = 8'b1010_1010; alu_ctrl = 3'b010;
        #10;

        // OR
        alu_ctrl = 3'b011;
        #10;

        // XOR
        alu_ctrl = 3'b100;
        #10;

        // SHIFT LEFT
        a = 8'b0000_0011; alu_ctrl = 3'b101;
        #10;

        // SHIFT RIGHT
        alu_ctrl = 3'b110;
        #10;

        // SLT
        a = 8'd4; b = 8'd9; alu_ctrl = 3'b111;
        #10;

        $finish;
    end

endmodule
