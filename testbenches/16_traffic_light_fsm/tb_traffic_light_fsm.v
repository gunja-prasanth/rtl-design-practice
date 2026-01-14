`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 22:25:49
// Design Name: 
// Module Name: tb_traffic_light_fsm
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


module tb_traffic_light_fsm;

    reg clk;
    reg reset;
    wire red;
    wire yellow;
    wire green;

    
    traffic_light_fsm uut (
        .clk(clk),
        .reset(reset),
        .red(red),
        .yellow(yellow),
        .green(green)
    );

    
    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        reset = 1;

      
        #10;
        reset = 0;

     
        #100;

        
        $stop;
    end

endmodule
