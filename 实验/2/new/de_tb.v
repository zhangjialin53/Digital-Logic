`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/09 22:11:25
// Design Name: 
// Module Name: de_tb
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

module de_selector14_tb; 
// �����źŶ��� 
reg iC;      
reg iS1;     
reg iS0;     
// �����ź� c 
// ѡ���ź� s1 
// ѡ���ź� s0 
// ����źŶ��� 
wire oZ0;    
// ����ź� z0 
    wire oZ1;    // ����ź� z1 
    wire oZ2;    // ����ź� z2 
    wire oZ3;    // ����ź� z3 
 
    // ʵ���������Ե�ģ�� 
    de_selector14 uut ( 
        .iC(iC), 
        .iS1(iS1), 
        .iS0(iS0), 
        .oZ0(oZ0), 
        .oZ1(oZ1), 
        .oZ2(oZ2), 
        .oZ3(oZ3) 
    ); 
     
// �����ʼ�� 
initial  
begin 
// ���ó�ʼ�����ź� 
iC = 0; iS1 = 0; iS0 = 0; 
#10;   
iC = 1; iS1 = 0; iS0 = 0; 
#10;  
iC = 1; iS1 = 0; iS0 = 1; 
#10; 
end 
endmodule 
