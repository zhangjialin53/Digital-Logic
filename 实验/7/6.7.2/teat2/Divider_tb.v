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

    // 实例化被测试模块
    Divider #(.DIVIDE_FACTOR(20)) uut (
        .I_CLK(I_CLK),
        .Rst(Rst),
        .O_CLK(O_CLK)
    );

    initial begin
        // 初始化信号
        I_CLK = 0;
        Rst = 1;
        #10 Rst = 0; // 释放复位信号

        #1000; // 等待一段时间后结束测试
        $stop;
    end

    // 产生输入时钟信号
    always #5 I_CLK = ~I_CLK; // 每5ns翻转一次，时钟周期为10ns
endmodule
