`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2026 09:12:35
// Design Name: 
// Module Name: tb_mealy_fsm
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


module tb_mealy_fsm;

    reg clk;
    reg rst;
    reg x;
    wire y;

    
    mealy_fsm uut (
        .clk(clk),
        .rst(rst),
        .x(x),
        .y(y)
    );

    
    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        rst = 1;
        x   = 0;

        
        #10;
        rst = 0;

       
        #10 x = 1;
        #10 x = 0;

     
        #10 x = 0;
        #10 x = 1;
        #10 x = 1;
        #10 x = 0;

       
        #10 x = 1;
        #10 x = 0;
        #10 x = 0;
        #10 x = 1;
        #10 x = 0;

       
        #20;
        $finish;
    end

endmodule

