`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/09 22:09:28
// Design Name: 
// Module Name: de
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

module de_selector14( 
    input iC, //输入信号 c 
    input iS1, //选择信号 s1 
    input iS0, //选择信号 s0 
    output oZ0, //输出信号 z0 
    output oZ1, //输出信号 z1 
    output oZ2, //输出信号 z2 
    output oZ3 //输出信号 z3 
    ); 
     
assign oZ0 = (~iS1 & ~iS0) ? iC : 1'b1;  // 当 iS1 iS0 为 00 时，oZ0 输出 iC 
assign oZ1 = (~iS1 &  iS0) ? iC : 1'b1;  // 当 iS1 iS0 为 01 时，oZ1 输出 iC 
assign oZ2 = ( iS1 & ~iS0) ? iC : 1'b1;  // 当 iS1 iS0 为 10 时，oZ2 输出 iC 
assign oZ3 = ( iS1 &  iS0) ? iC : 1'b1;  // 当 iS1 iS0 为 11 时，oZ3 输出 iC 
 
endmodule