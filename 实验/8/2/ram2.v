`timescale 1ns / 1ps

module ram2(
    input clk,
    input ena,
    input wena,
    input [4:0] addr,
    inout [31:0] data
);

    reg[31:0] RAM [31:0];
    
    reg [31:0] inner_data;
    assign data = wena ? 32'bz : inner_data;

    always @(posedge clk)
    if(ena)
    begin
        if(wena)
            RAM[addr] <= data;
        else
            inner_data <= RAM[addr];
    end
    else
    begin
        inner_data = 32'bz;
    end
    
endmodule
