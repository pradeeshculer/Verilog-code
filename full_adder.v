`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2022 05:43:22 AM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input a_in,
    input b_in,
    input c_in,
    output sum,
    output carry
    );
    assign sum=a_in^b_in^c_in;
    assign carry=(a_in & b_in)|(b_in & c_in)|(a_in & c_in);
endmodule

