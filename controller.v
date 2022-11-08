`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2022 12:52:19 PM
// Design Name: 
// Module Name: controller
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


module controller(
input clk,reset,
output x_ld,y_ld,sum_ld,sum_clr,
output  mult_sel);
reg x_ld,y_ld,sum_ld,sum_clr;
reg[1:0] mult_sel;
reg states;
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b101;
always@(posedge clk or posedge reset)
begin
if(reset)
begin
states=s0;
x_ld=1'b0; 
y_ld=1'b0;
sum_ld=1'b0; 
sum_clr=1'b1;
mult_sel=2'b11;
states=s0;
end
else
begin
case(states)

s0:begin
x_ld=1'b1; y_ld=1'b0;
sum_ld=1'b1; sum_clr=1'b0;mult_sel=2'b11;
states=s1;
end

s1:begin
x_ld=1'b0; y_ld=1'b0;
sum_ld=1'b1; sum_clr=1'b0;mult_sel=2'b00;
states=s2;
end

s2:begin
x_ld=1'b0; y_ld=1'b0;
sum_ld=1'b1; sum_clr=1'b0;mult_sel=2'b10;
states=s3;
end

s3:begin
x_ld=1'b0; y_ld=1'b0;
sum_ld=1'b1; sum_clr=1'b0;mult_sel=2'b01;
states=s4;
end

s4:begin
x_ld=1'b0; y_ld=1'b1;
sum_ld=1'b0; sum_clr=1'b1;mult_sel=2'b11;
end

endcase
end
end

endmodule

