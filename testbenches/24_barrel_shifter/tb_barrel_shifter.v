`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2026 09:25:47
// Design Name: 
// Module Name: tb_barrel_shifter
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


module tb_barrel_shifter;

    reg  [7:0] data_in;
    reg  [2:0] shift_amt;
    reg        dir;
    wire [7:0] data_out;

    barrel_shifter uut (
        .data_in(data_in),
        .shift_amt(shift_amt),
        .dir(dir),
        .data_out(data_out)
    );

    initial begin
        data_in = 8'b10110011;

        dir = 0; shift_amt = 3'd1; #10; // left shift
        dir = 0; shift_amt = 3'd3; #10;
        dir = 1; shift_amt = 3'd2; #10; // right shift
        dir = 1; shift_amt = 3'd4; #10;

        $stop;
    end

endmodule

