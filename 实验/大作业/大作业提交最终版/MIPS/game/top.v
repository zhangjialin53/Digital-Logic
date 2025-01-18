`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name: top
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
module top(clk,rst,start,over,color_r,color_g,color_b,hs,vs,move_top,move_bottom,move_left,move_right,change,key_clk,key_data,DREQ,XCS,XDCS,SCK,SI,XRESET,oData,law);
input clk;                     // ϵͳʱ�� 100M
input rst;                     // �͵�ƽ��Ч

// ��Ϸ���
input start;                 // ��Ϸ��ʼ
output over;                 // ��Ϸ����

// VGA ���
output [3:0] color_r;          // ��ɫ����
output [3:0] color_g;          // ��ɫ����
output [3:0] color_b;          // ��ɫ����
output hs;                     // ��ͬ��
output vs;                     // ��ͬ��
output move_top;               // ������ľ���ƶ�ʱ����
output move_bottom;            // ���ײ�ľ���ƶ�ʱ����
output move_left;              // �����ľ���ƶ�ʱ����
output move_right;             // ���Ҳ�ľ���ƶ�ʱ����
output change;                 // ľ�鱻����ʱ����

//�������
input   key_clk;               // ����ʱ��
input   key_data;              // ������������
wire [8:0] keys;

// mp3���
input     DREQ;           //�������󣬸ߵ�ƽʱ�ɴ�������
output    XCS;            // SCI �����дָ��
output    XDCS;           // SDI ��������
output    SCK;            // ʱ��
output    SI;             // ����mp3
output    XRESET;          // Ӳ����λ���͵�ƽ��Ч

// ��������
output [6:0] oData;        // ��ʾʱ��
output [7:0] law;          // Ƭѡ�����

wire clk_25M;              // 25Mʱ��
divider #(.num(4)) clk_vga(clk,clk_25M);
wire clk_1000;              // 1000ʱ��
divider #(.num(100000)) clk_display(clk,clk_1000);

// VGA
vga vga_inst(
    .clk_25M(clk_25M),
    .rst(rst),
    .start(start),
    .over(over),
    .key_ascii(keys),
    .color_r(color_r),
    .color_g(color_g),
    .color_b(color_b),
    .hs(hs),
    .vs(vs),
    .move_top(move_top),
    .move_bottom(move_bottom),
    .move_left(move_left),
    .move_right(move_right),
    .change(change)
);

//����
keyboard keyboard_inst(
    .clk(clk),
    .rst(1),
    .key_clk(key_clk),
    .key_data(key_data),
    .key_ascii(keys)
);

// mp3
mp3 mp3_inst(
    .clk(clk),
    .DREQ(DREQ),
    .rst(rst),
    .music_id(0),
    .XDCS(XDCS),
    .XCS(XCS),
    .XRSET(XRESET),
    .SI(SI),
    .SCK(SCK),
    .start(start)
    );

// �����
display display_inst(
    .clk_1000(clk_1000),
    .rst(rst),
    .start(start),
    .over(over),
    .oData(oData),
    .law(law)
    );

endmodule