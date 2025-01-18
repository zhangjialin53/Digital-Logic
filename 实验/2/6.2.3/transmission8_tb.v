`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/07 11:00:58
// Design Name: 
// Module Name: transmission8
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

module transmission8_tb;

    // Testbench ����
    reg [7:0] iData;
    reg A, B, C;
    wire [7:0] oData;
    
    // ʵ�������ģ��
    Transmission8 uut (
        .iData(iData),
        .A(A),
        .B(B),
        .C(C),
        .oData(oData)
    );
    
    // ��ʼ�������������ź�
    initial begin
        // ��ʼ�������ź�
        iData = 8'b00000000; A = 0; B = 0; C = 0;
        #10 iData = 8'b11111111; A = 0; B = 0; C = 0; // ABC = 000, ���ӦΪ D0
        #10 A = 0; B = 0; C = 1; // ABC = 001, ���ӦΪ D1
        #10 A = 0; B = 1; C = 0; // ABC = 010, ���ӦΪ D2
        #10 A = 0; B = 1; C = 1; // ABC = 011, ���ӦΪ D3
        #10 A = 1; B = 0; C = 0; // ABC = 100, ���ӦΪ D4
        #10 A = 1; B = 0; C = 1; // ABC = 101, ���ӦΪ D5
        #10 A = 1; B = 1; C = 0; // ABC = 110, ���ӦΪ D6
        #10 A = 1; B = 1; C = 1; // ABC = 111, ���ӦΪ D7
        #10 $finish; // ��������
    end
    
    // ���������ź�
    initial begin
        $monitor("At time %t, iData = %b, A = %b, B = %b, C = %b, oData = %b", 
                 $time, iData, A, B, C, oData);
    end
    
endmodule
