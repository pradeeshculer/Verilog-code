`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2022 12:09:45 PM
// Design Name: 
// Module Name: latch_tb
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


module latch_tb();
reg clk,din,reset;
wire dout;
latch tb(clk,din,reset,dout);
initial
begin

clk=1'b0;
din=1'b0;
reset=1'b1;
end
always #5 clk = !clk;
always #13 din = !din;
always #200 reset = !reset;
endmodule
