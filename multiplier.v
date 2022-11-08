`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 10:31:54 PM
// Design Name: 
// Module Name: multiplier
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


module multiplier(a_in, b_in, prod);
    parameter width = 12;
    input [width-1:0] a_in;
    input [width-1:0] b_in;
    output [2*width-1:0] prod;
    assign prod = a_in * b_in;
    
endmodule
