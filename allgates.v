`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2022 11:44:15 PM
// Design Name: 
// Module Name: allgates
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


module allgates(
    input a_in,
    input b_in,
    output and_out,
    output or_out,
    output not_out,
    output nand_out,
    output nor_out,
    output xor_out,
    output xnor_out
    );
    assign and_out=(a_in & b_in);
    assign nand_out=~(and_out);
    assign or_out=(a_in|b_in);
    assign nor_out=~(or_out);
    assign xor_out=(a_in^b_in);
    assign xnor_out=~xor_out;
    assign not_out=~a_in;
endmodule

