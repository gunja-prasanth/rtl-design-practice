`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2026 09:24:32
// Design Name: 
// Module Name: barrel_shifter
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


module barrel_shifter (
    input  [7:0] data_in,
    input  [2:0] shift_amt,
    input        dir,        // 0 = left shift, 1 = right shift
    output reg [7:0] data_out
);

    always @(*) begin
        if (dir == 1'b0)
            data_out = data_in << shift_amt; // Logical Left Shift
        else
            data_out = data_in >> shift_amt; // Logical Right Shift
    end

endmodule
