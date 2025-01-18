`timescale 1ns / 1ps

module Regfiles(
    input clk,
    input rst,
    input we,
    
    input [4:0] raddr1,
    input [4:0] raddr2,
    input [4:0] waddr,
    input [31:0] wdata,
    output [31:0] rdata1,
    output [31:0] rdata2
);

    wire [31:0] decoder_out;
    wire [31:0] regfile_out [31:0];
    
    decoder decoder_inst(waddr, we, decoder_out);
    
    genvar i;
    generate
        for(i = 0; i < 32; i = i + 1)
            pcreg pcreg_inst(clk, rst, decoder_out[i], wdata, regfile_out[i]);
    endgenerate
    
    selector32_1 selector32_1_inst(regfile_out[0],regfile_out[1],regfile_out[2],regfile_out[3],
    regfile_out[4],regfile_out[5],regfile_out[6],regfile_out[7],
    regfile_out[8],regfile_out[9],regfile_out[10],regfile_out[11],
    regfile_out[12],regfile_out[13],regfile_out[14],regfile_out[15],
    regfile_out[16],regfile_out[17],regfile_out[18],regfile_out[19],
    regfile_out[20],regfile_out[21],regfile_out[22],regfile_out[23],
    regfile_out[24],regfile_out[25],regfile_out[26],regfile_out[27],
    regfile_out[28],regfile_out[29],regfile_out[30],regfile_out[31], raddr1, rdata1, ~we);
    
    selector32_1 selector32_1_inst2(regfile_out[0],regfile_out[1],regfile_out[2],regfile_out[3],
    regfile_out[4],regfile_out[5],regfile_out[6],regfile_out[7],
    regfile_out[8],regfile_out[9],regfile_out[10],regfile_out[11],
    regfile_out[12],regfile_out[13],regfile_out[14],regfile_out[15],
    regfile_out[16],regfile_out[17],regfile_out[18],regfile_out[19],
    regfile_out[20],regfile_out[21],regfile_out[22],regfile_out[23],
    regfile_out[24],regfile_out[25],regfile_out[26],regfile_out[27],
    regfile_out[28],regfile_out[29],regfile_out[30],regfile_out[31], raddr2, rdata2, ~we);
    
endmodule

module selector32_1(
    input [31:0] iC0,
    input [31:0] iC1,
    input [31:0] iC2,
    input [31:0] iC3,
    input [31:0] iC4,
    input [31:0] iC5,
    input [31:0] iC6,
    input [31:0] iC7,
    input [31:0] iC8,
    input [31:0] iC9,
    input [31:0] iC10,
    input [31:0] iC11,
    input [31:0] iC12,
    input [31:0] iC13,
    input [31:0] iC14,
    input [31:0] iC15,
    input [31:0] iC16,
    input [31:0] iC17,
    input [31:0] iC18,
    input [31:0] iC19,
    input [31:0] iC20,
    input [31:0] iC21,
    input [31:0] iC22,
    input [31:0] iC23,
    input [31:0] iC24,
    input [31:0] iC25,
    input [31:0] iC26,
    input [31:0] iC27,
    input [31:0] iC28,
    input [31:0] iC29,
    input [31:0] iC30,
    input [31:0] iC31,
    input [4:0] iS,
    output reg [31:0] oZ,
    input ena
    );
    always @(*)
    begin
        if(ena)
        begin
            case(iS)
            5'd0 : oZ = iC0;
            5'd1 : oZ = iC1;
            5'd2 : oZ = iC2;
            5'd3 : oZ = iC3;
            5'd4 : oZ = iC4;
            5'd5 : oZ = iC5;
            5'd6 : oZ = iC6;
            5'd7 : oZ = iC7;
            5'd8 : oZ = iC8;
            5'd9 : oZ = iC9;
            5'd10: oZ = iC10;
            5'd11: oZ = iC11;
            5'd12: oZ = iC12;
            5'd13: oZ = iC13;
            5'd14: oZ = iC14;
            5'd15: oZ = iC15;
            5'd16: oZ = iC16;
            5'd17: oZ = iC17;
            5'd18: oZ = iC18;
            5'd19: oZ = iC19;
            5'd20: oZ = iC20;
            5'd21: oZ = iC21;
            5'd22: oZ = iC22;
            5'd23: oZ = iC23;
            5'd24: oZ = iC24;
            5'd25: oZ = iC25;
            5'd26: oZ = iC26;
            5'd27: oZ = iC27;
            5'd28: oZ = iC28;
            5'd29: oZ = iC29;
            5'd30: oZ = iC30;
            5'd31: oZ = iC31;    
            endcase      
        end
        else
            oZ = 32'bz;
    end
endmodule

module decoder(
    input [4:0] iData,
    input iEna,
    output [31:0] oData
);

    assign oData = (iEna ? (1 << iData) : 32'b0);
    
endmodule

module pcreg(
    input clk,
    input rst,
    input ena,
    input[31:0] data_in,
    output reg[31:0] data_out
    );
    
    always@ (posedge clk or posedge rst)
    begin
        if(rst)
            data_out <= 0;
        else if(ena)
            data_out <= data_in; 
    end
    
endmodule

