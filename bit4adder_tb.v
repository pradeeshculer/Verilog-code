`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2022 06:32:12 AM
// Design Name: 
// Module Name: bit4adder_tb
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


module bit4adder_tb();
    reg [3:0] a_in,b_in;
    reg c_in;
    wire [3:0] sum;
    wire carry;
    
    bit4adder tb(a_in,b_in,c_in,sum,carry);
    initial 
    begin
    a_in = 1'b0;
    b_in = 1'b0;
    c_in = 1'b0;
    #10;
    end
    always #20 a_in = a_in + 1'b1;
    always #10 b_in = b_in + 1'b1;
    always #5 c_in = ~c_in;
endmodule    
    
    

    

