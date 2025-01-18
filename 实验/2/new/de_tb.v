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
// 输入信号定义 
reg iC;      
reg iS1;     
reg iS0;     
// 输入信号 c 
// 选择信号 s1 
// 选择信号 s0 
// 输出信号定义 
wire oZ0;    
// 输出信号 z0 
    wire oZ1;    // 输出信号 z1 
    wire oZ2;    // 输出信号 z2 
    wire oZ3;    // 输出信号 z3 
 
    // 实例化被测试的模块 
    de_selector14 uut ( 
        .iC(iC), 
        .iS1(iS1), 
        .iS0(iS0), 
        .oZ0(oZ0), 
        .oZ1(oZ1), 
        .oZ2(oZ2), 
        .oZ3(oZ3) 
    ); 
     
// 仿真初始块 
initial  
begin 
// 设置初始输入信号 
iC = 0; iS1 = 0; iS0 = 0; 
#10;   
iC = 1; iS1 = 0; iS0 = 0; 
#10;  
iC = 1; iS1 = 0; iS0 = 1; 
#10; 
end 
endmodule 
