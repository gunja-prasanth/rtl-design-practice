`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2026 17:02:55
// Design Name: 
// Module Name: arbiter_rr
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


module arbiter_rr (
    input  wire        clk,
    input  wire        rst,
    input  wire [3:0]  req,     // request lines
    output reg  [3:0]  grant    // one-hot grant
);

    reg [1:0] last_grant;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            grant      <= 4'b0000;
            last_grant <= 2'd0;
        end else begin
            grant <= 4'b0000;

            case (last_grant)
                2'd0: begin
                    if      (req[1]) begin grant <= 4'b0010; last_grant <= 2'd1; end
                    else if (req[2]) begin grant <= 4'b0100; last_grant <= 2'd2; end
                    else if (req[3]) begin grant <= 4'b1000; last_grant <= 2'd3; end
                    else if (req[0]) begin grant <= 4'b0001; last_grant <= 2'd0; end
                end

                2'd1: begin
                    if      (req[2]) begin grant <= 4'b0100; last_grant <= 2'd2; end
                    else if (req[3]) begin grant <= 4'b1000; last_grant <= 2'd3; end
                    else if (req[0]) begin grant <= 4'b0001; last_grant <= 2'd0; end
                    else if (req[1]) begin grant <= 4'b0010; last_grant <= 2'd1; end
                end

                2'd2: begin
                    if      (req[3]) begin grant <= 4'b1000; last_grant <= 2'd3; end
                    else if (req[0]) begin grant <= 4'b0001; last_grant <= 2'd0; end
                    else if (req[1]) begin grant <= 4'b0010; last_grant <= 2'd1; end
                    else if (req[2]) begin grant <= 4'b0100; last_grant <= 2'd2; end
                end

                2'd3: begin
                    if      (req[0]) begin grant <= 4'b0001; last_grant <= 2'd0; end
                    else if (req[1]) begin grant <= 4'b0010; last_grant <= 2'd1; end
                    else if (req[2]) begin grant <= 4'b0100; last_grant <= 2'd2; end
                    else if (req[3]) begin grant <= 4'b1000; last_grant <= 2'd3; end
                end
            endcase
        end
    end

endmodule


