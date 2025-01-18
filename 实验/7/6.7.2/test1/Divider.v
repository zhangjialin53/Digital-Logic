`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/07 22:31:51
// Design Name: 
// Module Name: Divider
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

//// Divider.v
//module Divider (
//    input I_CLK,      // 输入时钟信号，上升沿有效
//    input Rst,        // 复位信号，高电平有效
//    output reg O_CLK=1  // 输出时钟
//);

//    parameter DIVIDE_FACTOR = 20; // 分频倍数默认为20
//    integer count;

//    always @(posedge I_CLK or posedge Rst) begin
//        if (Rst) begin
//            count <= 0;
//            O_CLK <= 0;
//        end else begin
//            if (count == DIVIDE_FACTOR / 2 - 1) begin
//                count <= 0;
//                O_CLK <= ~O_CLK;
//            end else begin
//                count <= count + 1;
//            end
//        end
//    end
//endmodule



//// Divider.v
//module Divider (
//    input I_CLK,      // 输入时钟信号，上升沿有效
//    input Rst,        // 复位信号，高电平有效
//    output reg O_CLK  // 输出时钟
//);

//    parameter DIVIDE_FACTOR = 20; // 分频倍数默认为20
//    integer count;

//    initial begin
//        O_CLK = 1; // 初始化 O_CLK 为 1
//    end

//    always @(posedge I_CLK or posedge Rst) begin
//        if (Rst) begin
//            count <= 0;
//            O_CLK <= 1; // 复位时将 O_CLK 设置为 1
//        end else begin
//            if (count == DIVIDE_FACTOR / 2 - 1) begin
//                count <= 0;
//                O_CLK <= ~O_CLK;
//            end else begin
//                count <= count + 1;
//            end
//        end
//    end
//endmodule


// Divider.v
module Divider (
    input I_CLK,      // 输入时钟信号，上升沿有效
    input Rst,        // 复位信号，高电平有效
    output reg O_CLK  // 输出时钟
);

   // parameter DIVIDE_FACTOR = 20; // 分频倍数默认为20
   parameter DIVIDE_FACTOR = 50000000; // 分频倍数设置为50000000
    integer count;

    initial begin
        O_CLK = 1; // 初始化 O_CLK 为 1
    end

    always @(posedge I_CLK) begin
        if (Rst) begin
            count <= 0;
            O_CLK <= 1; // 复位时将 O_CLK 设置为 1
        end else begin
            if (count == DIVIDE_FACTOR / 2 - 1) begin
                count <= 0;
                O_CLK <= ~O_CLK;
            end else begin
                count <= count + 1;
            end
        end
    end
endmodule

