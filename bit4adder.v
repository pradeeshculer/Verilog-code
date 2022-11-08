`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2022 05:50:29 AM
// Design Name: 
// Module Name: bit4adder
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


module bit4adder(a_in, b_in, c_in, sum, carry);
    input [3:0] a_in,b_in;
    input c_in;
    output [3:0] sum;
    output carry;
    wire [2:0] c;
    
full_adder dut1
(a_in[0], b_in[0], c_in, sum[0], c[0]);

full_adder dut2
(a_in[1], b_in[1], c[0], sum[1], c[1]);

full_adder dut3
(a_in[2], b_in[2], c[1], sum[2], c[2]);

full_adder dut4
(a_in[3], b_in[3], c[2], sum[3], carry);

endmodule

