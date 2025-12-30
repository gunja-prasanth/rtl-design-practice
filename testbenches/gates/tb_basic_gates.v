`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2025 11:04:50
// Design Name: 
// Module Name: tb_basic_gates
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

module tb_basic_gates;
  
    reg a, b;
    
    
    wire y_and, y_or, y_not;

    
    and_gate U1 (.a(a), .b(b), .y(y_and));
    or_gate  U2 (.a(a), .b(b), .y(y_or));
    not_gate U3 (.a(a), .y(y_not));

    initial begin
        
        $display("Time | a b | AND OR NOT");
        $monitor("%4dns | %b %b |  %b   %b   %b", $time, a, b, y_and, y_or, y_not);

        
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule

