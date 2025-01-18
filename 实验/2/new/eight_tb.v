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
 
    // 输入信号定义 
    reg [7:0] iData;  // 输入信号 D7~D0 
    reg A, B, C;      // 选择信号 S2~S0 
 
    // 输出信号定义 
    wire [7:0] oData; // 输出信号 f0~f7 
 
    // 实例化被测试的模块 
    transmission8 uut ( 
        .iData(iData), 
        .A(A), 
        .B(B), 
        .C(C), 
        .oData(oData) 
    ); 
 
    // 仿真初始块 
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
