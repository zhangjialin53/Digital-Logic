`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/04 13:56:08
// Design Name: 
// Module Name: mp3
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


module mp3(clk,rst,start,music_id,XRSET,DREQ,XCS,XDCS,SI,SCK);
input clk;               
input rst;               
input start;             
input [2:0] music_id;    
// mp3 
output reg XRSET;          
input DREQ;               
output reg XCS;            // SCI 
output reg XDCS;           // SDI 
output reg SI;             
output reg SCK;            // MP3

reg init = 0;
// 1M
wire clk_1M;
Divider #(.num(100)) clk_mp3(clk, clk_1M);

// IP 
reg[11:0] addr;
wire [15: 0] get_data;
reg [15: 0] music_data;
blk_mem_gen_0 music_0 (
.clka(clk),
//.ena(1),
.addra({music_id, addr}),
.douta(get_data));

reg [3:0] condition = 0;   
reg [63: 0] cmd = {32'h02000804, 32'h020B8080};     


integer cnt = 0;           
integer num = 0;           

parameter DELAY = 1;
parameter PRE_CMD = 2;
parameter WRITE_CMD = 3;
parameter PRE_DATA = 4;
parameter WRITE_DATA = 5;
parameter DELAY_TIME = 500000;

always @(posedge clk_1M)
begin
   if(!rst || !init) begin              
        init <= 1;
        XRSET <= 0;
        SCK <= 0;
        XCS <= 1;                       
        XDCS <= 1;                      
        condition <= DELAY;
        addr <= 0;
        cnt <= 0;
   end
   else begin
    if(start) begin
    case (condition)
        DELAY: begin
            if(cnt == DELAY_TIME) begin       
                cnt <= 0;
                condition <= PRE_CMD;
                XRSET <= 1;                    
            end
            else begin                          
                cnt <= cnt + 1;
            end
        end
        PRE_CMD: begin
            SCK <= 0;                      // MP3
            if(num == 2) begin             
                condition <= PRE_DATA;
                num <= 0;
            end
            else begin
                if(DREQ) begin
                    cnt <= 0;
                    condition <= WRITE_CMD;
                end
            end
        end
        WRITE_CMD: begin
            if(DREQ) begin
                if(clk) begin
                    if(cnt == 32) begin         
                        cnt <= 0;               
                        XCS <= 1;              
                        condition <= PRE_CMD;
                        num <= num + 1;
                    end
                    else begin
                        XCS <= 0;               
                        SI <= cmd[63];          
                        cmd <= {cmd[62: 0], cmd[63]};   // 命令移位
                        cnt <= cnt + 1;
                    end
                end
                SCK <= ~SCK;                  
            end
        end
        PRE_DATA: begin
            if(DREQ) begin
                SCK <= 0;
				condition <= WRITE_DATA;
				music_data <= get_data;       
				cnt <= 0;
            end
        end
        WRITE_DATA: begin
            if(SCK) begin
                if(cnt == 16) begin           
                    XDCS <= 1;                
                    addr <= addr + 1;         
                    cnt <= 0;
                    condition <= PRE_DATA;
                end
                else begin                
                    XDCS <= 0;             
                    SI <= music_data[15];    
                    music_data <= {music_data[14:0],music_data[15]};
                    cnt <= cnt + 1;
                end
            end
             SCK <= ~SCK;                  
        end
        default: ;
    endcase 
    end
   end
end

endmodule
