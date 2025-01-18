`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/07 21:42:06
// Design Name: 
// Module Name: Counter8
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

module Counter8(
    input CLK,
    input rst_n,
    output [2:0] oQ,
    output [6:0] oDisplay
    );
    
    wire Q0, Q1, Q2, Q0n, Q1n, Q2n, Q0ANDQ1;
    
    assign oQ  = {Q2, Q1, Q0};
    JK_FF jk1(CLK, 1, 1, rst_n, Q0, Q0n);
    JK_FF jk2(CLK, Q0, Q0, rst_n, Q1, Q1n);
    and q0andq1(Q0ANDQ1, Q0, Q1);
    JK_FF jk3(CLK, Q0ANDQ1, Q0ANDQ1, rst_n, Q2, Q2n);
    
    display7 display7_inst({0, oQ}, oDisplay);
    
endmodule


module JK_FF(
    input CLK,
    input J,
    input K,
    input RST_n,
    output reg Q1,
    output reg Q2
);

    always@ (posedge CLK or negedge RST_n)
    begin
        if(!RST_n)
        begin
            Q1 <= 0;
            Q2 <= 1;
        end
        else
        begin
            case({J, K})
            2'b00: 
            begin
                Q1 <= Q1; 
                Q2 <= Q2;
            end
            2'b01:
            begin
                Q1 <= 0;
                Q2 <= 1;
            end
            2'b10:
            begin
                Q1 <= 1;
                Q2 <= 0;
            end
            2'b11:
            begin
                Q1 <= !Q1;
                Q2 <= !Q2;
            end
            endcase 
        end       
    end
    
endmodule



module display7(
    input [3:0] iData,
    output reg [6:0] oData
);

    always @(*)
    begin
        case(iData)
            4'b0000 : oData = 7'b1000000;
            4'b0001 : oData = 7'b1111001;
            4'b0010 : oData = 7'b0100100;
            4'b0011 : oData = 7'b0110000;
            4'b0100 : oData = 7'b0011001;
            4'b0101 : oData = 7'b0010010;
            4'b0110 : oData = 7'b0000010;
            4'b0111 : oData = 7'b1111000;
            4'b1000 : oData = 7'b0000000;
            4'b1001 : oData = 7'b0010000;
        endcase
    end
    
endmodule

