`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2022 11:44:16 AM
// Design Name: 
// Module Name: mux
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


module mux(
     input I0,
     input I1,
     input I2,
     input I3,
     input S0,
     input S1,
     output reg out
     );
     always@(I0,I1,I2,I3,S0,S1)
         case({S0,S1})
         2'd0: out = I0;
         2'd1: out = I1;
         2'd2: out = I2;
         2'd3: out = I3;
         default: out=I0;
         endcase
endmodule

