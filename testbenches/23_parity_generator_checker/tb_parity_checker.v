`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2026 17:48:38
// Design Name: 
// Module Name: tb_parity_checker
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


module tb_parity_checker;

reg  [7:0] data;
reg        parity_bit;
reg        even_odd;
wire       error;

parity_checker uut (
    .data(data),
    .parity_bit(parity_bit),
    .even_odd(even_odd),
    .error(error)
);

initial begin
    even_odd = 0; // even parity
    data = 8'b10101010;
    parity_bit = ^data;      // correct
    #10 parity_bit = ~(^data); // wrong
    #10 $finish;
end

endmodule
