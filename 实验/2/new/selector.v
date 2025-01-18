`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/09 21:48:48
// Design Name: 
// Module Name: selector
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
module selector41( 
    input [3:0] iC0, // ��λ�����ź� c0 
    input [3:0] iC1, // ��λ�����ź� c1 
    input [3:0] iC2, // ��λ�����ź� c2 
    input [3:0] iC3, // ��λ�����ź� c3 
    input iS1,       // ѡ���ź� s1 
    input iS0,       // ѡ���ź� s0 
    output [3:0] oZ  // ��λ����ź� z 
); 
assign oZ = (iS1 == 0 && iS0 == 0) ? iC0 : 
            (iS1 == 0 && iS0 == 1) ? iC1 : 
            (iS1 == 1 && iS0 == 0) ? iC2 : 
            iC3; 
endmodule 

