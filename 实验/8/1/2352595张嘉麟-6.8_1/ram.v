`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/14 20:36:46
// Design Name: 
// Module Name: ram
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


module ram(
    input clk,
    input ena,
    input wena,
    input [4:0] addr,
    input [31:0] data_in,
    output [31:0] data_out
    );
    reg [31:0] RAM [31:0];
    always @(posedge clk) begin
        if (ena && wena) begin
            RAM[addr] <= data_in; // 仅在写使能下写入数据
        end
    end
    assign data_out = (ena && !wena) ? RAM[addr] : 32'bz;
endmodule
