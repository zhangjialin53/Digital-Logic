`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/14 20:54:49
// Design Name: 
// Module Name: ram_tb
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


module ram_tb;
reg clk;
reg ena;
reg wena;
reg [4:0] addr;
reg [31:0] data_in;
wire [31:0] data_out;

// 实例化 RAM 模块
ram uut (
    .clk(clk),
    .ena(ena),
    .wena(wena),
    .addr(addr),
    .data_in(data_in),
    .data_out(data_out)
);

// 时钟信号生成
initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10ns 时钟周期
end

// 测试序列
initial begin
    // 初始化信号
    ena = 0;
    wena = 0;
    addr = 0;
    data_in = 0;

    // 写操作测试
    #100;
    ena = 1;
    wena = 1;
    addr = 5'd0;
    data_in = 32'h12345678;
    #10;

    // 读操作测试
    wena = 0;
    #10;
    
    ena = 1;
    wena = 1;
    addr = 5'd0;
    data_in = 32'h87654321;
    #10;

    // 读操作测试
    wena = 0;
    #10;
    ena = 1;
    wena = 0;
    data_in = 32'h77777777;
    addr = 5'b00000;
    #10 addr = 5'b00001;
    #10 addr = 5'b00010;
    #10 addr = 5'b00011;
    #10 addr = 5'b00100;
    #10 addr = 5'b00101;
    #10 addr = 5'b00110;
    #10 addr = 5'b00111;
    #10 addr = 5'b01000;
    #10;
    $display("Read data at address 0: %h", data_out); // 应输出 12345678

    // 结束测试
    #100 $finish;
end
endmodule
