`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name: keyboard
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
module keyboard (clk,rst,key_clk,key_data,key_ascii);
input clk;                 //ϵͳʱ��
input rst;				   //ϵͳ��λ������Ч
input key_clk;             //PS2����ʱ��
input key_data;	           //PS2������������
output reg [7:0] key_ascii;    //���¼��̵�ASCII��(�ض�����Ч�������Ϊ0)

reg [3:0] now_bit = 0;        //��¼�ѻ�ȡ��bit��
reg [7:0] store = 0;          //�洢������������
reg [7:0] key_info = 0;    //�洢����������Ϣ
reg break = 0;             //�����־

reg	key_clk_new = 1'b1, key_clk_old = 1'b1; 
reg	key_data_new = 1'b1, key_data_old = 1'b1;

// �Լ���ʱ�������źŽ�����ʱ����
always @ (posedge clk or negedge rst)
begin
	if(!rst) 
	begin
		key_clk_new <= 1'b1;
		key_clk_old <= 1'b1;
		key_data_new <= 1'b1;
		key_data_old <= 1'b1;
	end
	else
	begin
		//����洢ʵ����ʱ����
    	key_clk_new <= key_clk;
		key_clk_old <= key_clk_new;
		key_data_new <= key_data;
		key_data_old <= key_data_new;
	end
end

wire key_clk_neg = key_clk_old & (~key_clk_new); 

//PS2����ʱ���ź��½��ض�ȡ����
always @ (posedge clk or negedge rst)
begin
	if(!rst) 
	begin
		now_bit <= 4'd0;
		store <= 8'd0;
	end
	else
	begin
		if(key_clk_neg)
		begin
			if(now_bit >= 4'd10) now_bit <= 4'd0;
			else now_bit <= now_bit + 1'b1;
			case (now_bit)
				0: ;	                    //��ʼλ
				// bit����λ
				1: store[0] <= key_data_old;
				2: store[1] <= key_data_old;
				3: store[2] <= key_data_old;
				4: store[3] <= key_data_old;
				5: store[4] <= key_data_old;
				6: store[5] <= key_data_old;
				7: store[6] <= key_data_old;
				8: store[7] <= key_data_old;
				9: ;	                    //У��λ
				10:;	                    //����λ
				default: ;
			endcase
		end
	end
end

//�ж϶���
always @ (posedge clk or negedge rst)
begin
	if(!rst) 
	begin
		break <= 0;         //���ñ��
		key_info <= 0;
	end
	else
	begin
		if(now_bit == 4'd10 && key_clk_neg)               //�Ѿ���ȡ���������ݣ��Ҵ���PS2����ʱ���ź��½���
		begin
			if(store == 8'hf0) break <= 1;             //���루8'hf0����ʾ�����ɿ�����һ������Ϊ���룬���ö����ʾΪ1
			else if(!break) key_info <= store;     //��Ϊ����
			else                                       //�ö������Ƕ��룬����
			begin
				break <= 0;         //���ñ��
				key_info <= 0;
			end
		end
	end
end


//���Ӽ��̵õ�������ת��ΪASCII��
always @ (key_info)
begin
    case (key_info)
        8'h75: key_ascii <= 8'd1;			//�ϼ�ͷ
		8'h72: key_ascii <= 8'd2;			//�¼�ͷ
		8'h6b: key_ascii <= 8'd3;			//���ͷ
		8'h74: key_ascii <= 8'd4;			//�Ҽ�ͷ
		8'h1d: key_ascii <= 8'd5;   		// w
		8'h1b: key_ascii <= 8'd6;   		// s
		8'h1c: key_ascii <= 8'd7;   		// a
		8'h23: key_ascii <= 8'd8;   		// d
        default: key_ascii <= 0;
    endcase
end

endmodule