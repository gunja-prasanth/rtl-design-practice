`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2026 16:02:55
// Design Name: 
// Module Name: vending_machine_fsm
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


module vending_machine_fsm (
    input clk,
    input reset,
    input coin_5,
    input coin_10,
    output reg dispense
);

    // State encoding (Verilog style)
    parameter S0  = 2'b00;   // ?0
    parameter S5  = 2'b01;   // ?5
    parameter S10 = 2'b10;   // ?10

    reg [1:0] current_state;
    reg [1:0] next_state;

    // State register
    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= S0;
        else
            current_state <= next_state;
    end

    // Next-state & output logic (Moore FSM)
    always @(*) begin
        next_state = current_state;
        dispense   = 1'b0;

        case (current_state)
            S0: begin
                if (coin_5)
                    next_state = S5;
                else if (coin_10)
                    next_state = S10;
            end

            S5: begin
                if (coin_5)
                    next_state = S10;
                else if (coin_10) begin
                    dispense   = 1'b1;
                    next_state = S0;
                end
            end

            S10: begin
                if (coin_5 || coin_10) begin
                    dispense   = 1'b1;
                    next_state = S0;
                end
            end

            default: begin
                next_state = S0;
                dispense   = 1'b0;
            end
        endcase
    end

endmodule
