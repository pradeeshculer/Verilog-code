`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 10:18:00 AM
// Design Name: 
// Module Name: genericadder_tb
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


module genericadder_tb();
parameter width=24;
    reg [width-1:0] a_in, b_in;
    reg c_in;
    wire [width-1:0] sum;
    wire carry;
    genericadder tb(a_in,b_in,c_in,sum,carry);
    initial
    begin
    a_in = 24'd0;
    b_in = 24'd0;
    c_in = 24'd0;
    #100;
    end
    
    always #20 a_in = a_in + 1'b1;
    always #10 b_in = b_in + 1'b1;
    always #5 c_in = ~c_in;
endmodule

