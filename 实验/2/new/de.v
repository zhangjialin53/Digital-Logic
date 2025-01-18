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
    input iC, //�����ź� c 
    input iS1, //ѡ���ź� s1 
    input iS0, //ѡ���ź� s0 
    output oZ0, //����ź� z0 
    output oZ1, //����ź� z1 
    output oZ2, //����ź� z2 
    output oZ3 //����ź� z3 
    ); 
     
assign oZ0 = (~iS1 & ~iS0) ? iC : 1'b1;  // �� iS1 iS0 Ϊ 00 ʱ��oZ0 ��� iC 
assign oZ1 = (~iS1 &  iS0) ? iC : 1'b1;  // �� iS1 iS0 Ϊ 01 ʱ��oZ1 ��� iC 
assign oZ2 = ( iS1 & ~iS0) ? iC : 1'b1;  // �� iS1 iS0 Ϊ 10 ʱ��oZ2 ��� iC 
assign oZ3 = ( iS1 &  iS0) ? iC : 1'b1;  // �� iS1 iS0 Ϊ 11 ʱ��oZ3 ��� iC 
 
endmodule