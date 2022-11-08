`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2022 11:52:58 PM
// Design Name: 
// Module Name: allgates_tb
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


module allgates_tb();
    reg a_in,b_in;
    wire and_out,or_out,nand_out,nor_out,xor_out,xnor_out,not_out;
    allgates tb(a_in,b_in,and_out,or_out,nand_out,nor_out,xor_out,xnor_out,not_out);
    initial
    begin
    a_in=1'b0;
    b_in=1'b0;
    #100;
    end
    always #3 a_in=~a_in;
    always #7 b_in=~b_in;
    
endmodule