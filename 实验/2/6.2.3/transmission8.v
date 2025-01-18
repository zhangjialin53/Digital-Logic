`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/07 10:59:58
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

module transmission8(
    input [7:0] iData,  // 输入信号 D7~D0
    input A, B, C,      // 选择信号 S2~S0
    output reg [7:0] oData // 输出信号 f0~f7
);

    always @(*) begin
        case ({A, B, C})
            3'b000: oData = 8'b00000001 & iData;
            3'b001: oData = 8'b00000010 & iData;
            3'b010: oData = 8'b00000100 & iData;
            3'b011: oData = 8'b00001000 & iData;
            3'b100: oData = 8'b00010000 & iData;
            3'b101: oData = 8'b00100000 & iData;
            3'b110: oData = 8'b01000000 & iData;
            3'b111: oData = 8'b10000000 & iData;
            default: oData = 8'b00000000;
        endcase
    end

endmodule
