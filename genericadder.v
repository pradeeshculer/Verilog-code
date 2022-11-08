`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 10:08:16 AM
// Design Name: 
// Module Name: genericadder
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


module genericadder(a_in, b_in, c_in, sum, carry);
    parameter width=24;
    input [width-1:0] a_in, b_in;
    input c_in;
    output [width-1:0] sum;
    output carry;
    wire[width:0] c;
    genvar i;
    
    assign c[0] = c_in;
    generate
    for(i=0; i<width; i=i+1)
    begin : Adder_gen
    full_adder dut(a_in[i],b_in[i],c[i],sum[i],c[i+1]);
    end
    endgenerate
    assign carry = c[width];
    endmodule
    
    


