`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2022 05:45:06 AM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg a_in,b_in,c_in;
wire sum,carry;

full_adder dut(.a_in(a_in),.b_in(b_in),.c_in(c_in),.sum(sum),.carry(carry));
initial begin
a_in=1'b0;
b_in=1'b0;
c_in=1'b0;
end;

always #5 c_in=~c_in;
always #10 b_in = ~b_in;
always #20 a_in = ~a_in;
endmodule

