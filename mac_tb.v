`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 11:10:51 PM
// Design Name: 
// Module Name: mac_tb
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


module mac_tb();
reg clk,reset;
reg [11:0] Ain,Bin;
wire [24:0] Mac_out;

mac tb(Ain,Bin,clk,reset,Mac_out);

initial
begin
clk = 1'b0;
reset = 1'b1;
Ain = 11'd0;
Bin = 11'd0;
end

always #5 clk=~clk;
always #30 Ain = Ain + 1'b1;
always #(2**12*30) Bin = Bin + 1'b1;
always #1555 reset = ~reset;

endmodule



