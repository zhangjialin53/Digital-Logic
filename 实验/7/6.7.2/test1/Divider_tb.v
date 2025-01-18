`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/07 22:33:44
// Design Name: 
// Module Name: Divider_tb
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

// Divider_tb.v

module Divider_tb;
    reg I_CLK;
    reg Rst;
    wire O_CLK;

    // ʵ����������ģ��
    Divider #(.DIVIDE_FACTOR(20)) uut (
        .I_CLK(I_CLK),
        .Rst(Rst),
        .O_CLK(O_CLK)
    );

    initial begin
        // ��ʼ���ź�
        I_CLK = 0;
        Rst = 1;
        #10 Rst = 0; // �ͷŸ�λ�ź�

        #1000; // �ȴ�һ��ʱ����������
        $stop;
    end

    // ��������ʱ���ź�
    always #5 I_CLK = ~I_CLK; // ÿ5ns��תһ�Σ�ʱ������Ϊ10ns
endmodule
