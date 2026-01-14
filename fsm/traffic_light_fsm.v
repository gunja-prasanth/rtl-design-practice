`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 22:22:36
// Design Name: 
// Module Name: traffic_light_fsm
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


module traffic_light_fsm (
    input clk,
    input reset,
    output reg red,
    output reg yellow,
    output reg green
);

  
    parameter RED    = 2'b00;
    parameter GREEN  = 2'b01;
    parameter YELLOW = 2'b10;

    reg [1:0] state;
    reg [1:0] next_state;

   
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= RED;
        else
            state <= next_state;
    end

    
    always @(*) begin
        case (state)
            RED:    next_state = GREEN;
            GREEN:  next_state = YELLOW;
            YELLOW: next_state = RED;
            default: next_state = RED;
        endcase
    end

    
    always @(*) begin
        red    = 0;
        yellow = 0;
        green  = 0;

        case (state)
            RED:    red = 1;
            GREEN:  green = 1;
            YELLOW: yellow = 1;
        endcase
    end

endmodule


