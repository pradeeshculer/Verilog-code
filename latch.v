`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2022 12:03:03 PM
// Design Name: 
// Module Name: latch
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


module latch(
    input clk,
    input din,
    input reset,
    output reg dout
    );
    always @ (clk or din or reset)
    begin
    if (!reset)
    dout <= 1'b0;
    else if (clk)
    dout <= din;
    end
endmodule

