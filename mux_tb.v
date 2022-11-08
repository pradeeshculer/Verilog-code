`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2022 11:51:01 AM
// Design Name: 
// Module Name: mux_tb
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


module mux_tb();
     reg I0,I1,I2,I3,S0,S1;
     wire out;
     mux tb(.I0(I0),.I1(I1),.I2(I2),.I3(I3),.S0(S0),.S1(S1),.out(out));
     initial begin
     I0=1'b0;
     I1=1'b0;
     I2=1'b0;
     I3=1'b0;
     S0=1'b0;
     S1=1'b0;
     #1000;
     end
     always #5 I0=~I0;
     always #10 I1=~I1;
     always #15 I2=~I2;
     always #20 I3=~I3;
     always #80 S0=~S0;
     always #160 S1=~S1;
     
endmodule

