`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/09 22:28:46
// Design Name: 
// Module Name: eight_tb
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

module tb_transmission8; 
 
    // �����źŶ��� 
    reg [7:0] iData;  // �����ź� D7~D0 
    reg A, B, C;      // ѡ���ź� S2~S0 
 
    // ����źŶ��� 
    wire [7:0] oData; // ����ź� f0~f7 
 
    // ʵ���������Ե�ģ�� 
    transmission8 uut ( 
        .iData(iData), 
        .A(A), 
        .B(B), 
        .C(C), 
        .oData(oData) 
    ); 
 
    // �����ʼ�� 
    initial 
    begin 
    A=0;
    B=0;
    C=0;
    #100 A=0;B=0;C=1;
    #100 A=0;B=1;C=0;
    #100 A=0;B=1;C=1;
    #100 A=1;B=0;C=0;
    #100 A=1;B=0;C=1;
    #100 A=1;B=1;C=0;
    #100 A=1;B=1;C=1;
    #100;
    end
    
    
    
    
    initial
    begin
     iData = 8'b00000000;
     #800;
     end
    
 
endmodule 
