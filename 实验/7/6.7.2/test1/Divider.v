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
//    input I_CLK,      // ����ʱ���źţ���������Ч
//    input Rst,        // ��λ�źţ��ߵ�ƽ��Ч
//    output reg O_CLK=1  // ���ʱ��
//);

//    parameter DIVIDE_FACTOR = 20; // ��Ƶ����Ĭ��Ϊ20
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
//    input I_CLK,      // ����ʱ���źţ���������Ч
//    input Rst,        // ��λ�źţ��ߵ�ƽ��Ч
//    output reg O_CLK  // ���ʱ��
//);

//    parameter DIVIDE_FACTOR = 20; // ��Ƶ����Ĭ��Ϊ20
//    integer count;

//    initial begin
//        O_CLK = 1; // ��ʼ�� O_CLK Ϊ 1
//    end

//    always @(posedge I_CLK or posedge Rst) begin
//        if (Rst) begin
//            count <= 0;
//            O_CLK <= 1; // ��λʱ�� O_CLK ����Ϊ 1
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
    input I_CLK,      // ����ʱ���źţ���������Ч
    input Rst,        // ��λ�źţ��ߵ�ƽ��Ч
    output reg O_CLK  // ���ʱ��
);

   // parameter DIVIDE_FACTOR = 20; // ��Ƶ����Ĭ��Ϊ20
   parameter DIVIDE_FACTOR = 50000000; // ��Ƶ��������Ϊ50000000
    integer count;

    initial begin
        O_CLK = 1; // ��ʼ�� O_CLK Ϊ 1
    end

    always @(posedge I_CLK) begin
        if (Rst) begin
            count <= 0;
            O_CLK <= 1; // ��λʱ�� O_CLK ����Ϊ 1
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

