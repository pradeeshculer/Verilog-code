`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2022 12:14:40 PM
// Design Name: 
// Module Name: dff
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


module dff(
input clk,rst,din,en,
output reg dout
    );
   
    always@ (posedge clk or negedge rst)
    begin
    if(!rst)
       dout<=1'b0;
    else if(en)
       dout<=din;
    end
endmodule

