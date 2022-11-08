`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2022 12:17:09 PM
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();
reg clk,rst,din,en;
wire dout;
 
dff tb(clk,rst,din,en,dout);

initial
begin
clk=1'b0;
rst=1'b0;
din=1'b0;
en=1'b0;
end

always #5 clk = ~clk;
always #7 rst = ~rst;
always #11 en = ~en;
always #17 din = ~din;
endmodule

