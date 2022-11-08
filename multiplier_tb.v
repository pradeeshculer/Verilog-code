`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 10:44:01 PM
// Design Name: 
// Module Name: multiplier_tb
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


module multiplier_tb();
   parameter width = 64;
    reg [width-1:0] a_in;
    reg [width-1:0] b_in;
    wire [2*width-1:0] prod;
    multiplier uut(.a_in(a_in),.b_in(b_in),.prod(prod));    
    initial
    begin
    a_in = 64'd0;
    b_in = 64'd0;
    #100;
    end
    
    always #200 a_in = a_in + 12'b1;
    always #1000 b_in = b_in + 12'b1;
endmodule

