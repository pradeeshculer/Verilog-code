`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 10:51:02 PM
// Design Name: 
// Module Name: mac
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


module mac(
     input [11:0] Ain,
     input [11:0] Bin,
     input clk,reset,
     output [24:0] Mac_out
);
    wire carry;
    wire Cin;
    reg [24:0] sum_reg;
    assign Cin = 1'b0;
    wire [23:0] mult_out;
    wire [24:0] add_out;
    wire [24:0] sum;
    
    multiplier dut1(Ain,Bin,mult_out);
    genericadder dut2(mult_out,sum,Cin,add_out[23:0],carry);
    assign sum[24]=carry;
    
    always @(posedge clk)
    if (reset) begin
    sum_reg <= 24'b0;
    end else begin
    sum_reg <= add_out;
    end
    
    assign Mac_out = sum_reg;
    assign sum = sum_reg;
    
endmodule
