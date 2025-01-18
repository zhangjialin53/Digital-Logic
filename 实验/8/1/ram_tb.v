`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/14 17:53:46
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
    reg clk, ena, wena;
    reg [4:0] addr;
    reg [31:0] data_in;
    wire [31:0] data_out;
    
    initial
    begin
    clk = 0;
        forever
        begin
            clk = #5 ~clk;
        end
    end
    
    initial
    begin
        ena = 0;
        #10;
        ena = 1;
        data_in = 0;
        wena = 1;
        for(addr = 0; addr < 31; addr = addr + 1)
        begin
            data_in = data_in + 1;
            #10;
        end
        
        wena = 0;
        for(addr = 0; addr < 31; addr = addr + 1)
        begin
            #10;
        end
        
        ena = 0;
    end
    
   ram ram_inst(clk, ena, wena, addr, data_in, data_out);
    
endmodule
