`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2022 01:27:52 PM
// Design Name: 
// Module Name: controller_tb
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


module controller_tb();
reg clk,reset;
wire x_ld,y_ld,sum_ld,sum_clr,mult_sel;
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b101;
controller uut(.clk(clk),.reset(reset),.x_ld(x_ld),.y_ld(y_ld),.sum_ld(sum_ld),.sum_clr(sum_clr),.mult_sel(mult_sel));
initial
begin
clk = 1'b0;
reset = 1'b1;
end
always #5 clk = ~clk;
always #10 reset = ~reset;
endmodule
