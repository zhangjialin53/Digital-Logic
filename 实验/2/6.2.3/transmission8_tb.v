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

    // Testbench 变量
    reg [7:0] iData;
    reg A, B, C;
    wire [7:0] oData;
    
    // 实例化设计模块
    Transmission8 uut (
        .iData(iData),
        .A(A),
        .B(B),
        .C(C),
        .oData(oData)
    );
    
    // 初始化并生成输入信号
    initial begin
        // 初始化输入信号
        iData = 8'b00000000; A = 0; B = 0; C = 0;
        #10 iData = 8'b11111111; A = 0; B = 0; C = 0; // ABC = 000, 输出应为 D0
        #10 A = 0; B = 0; C = 1; // ABC = 001, 输出应为 D1
        #10 A = 0; B = 1; C = 0; // ABC = 010, 输出应为 D2
        #10 A = 0; B = 1; C = 1; // ABC = 011, 输出应为 D3
        #10 A = 1; B = 0; C = 0; // ABC = 100, 输出应为 D4
        #10 A = 1; B = 0; C = 1; // ABC = 101, 输出应为 D5
        #10 A = 1; B = 1; C = 0; // ABC = 110, 输出应为 D6
        #10 A = 1; B = 1; C = 1; // ABC = 111, 输出应为 D7
        #10 $finish; // 结束仿真
    end
    
    // 用来监视信号
    initial begin
        $monitor("At time %t, iData = %b, A = %b, B = %b, C = %b, oData = %b", 
                 $time, iData, A, B, C, oData);
    end
    
endmodule
