`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/25 19:18:31
// Design Name: 
// Module Name: alu_tb
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


module alu_tb;
    // Inputs to the ALU
reg [31:0] a;
reg [31:0] b;
reg [3:0] aluc;

// Outputs from the ALU
wire [31:0] r;
wire zero;
wire carry;
wire negative;
wire overflow;

// Instantiate the ALU module
alu uut (
    .a(a),
    .b(b),
    .aluc(aluc),
    .r(r),
    .zero(zero),
    .carry(carry),
    .negative(negative),
    .overflow(overflow)
);

initial begin
    // Initialize Inputs
    a = 0;
    b = 0;
    aluc = 0;

    // Monitor the outputs
    $monitor("Time = %0t, a = %08h, b = %08h, aluc = %b, r = %08h, zero = %b, carry = %b, negative = %b, overflow = %b",
             $time, a, b, aluc, r, zero, carry, negative, overflow);

    // Test unsigned addition (ADDU)
    a = 32'h7FFFFFFF; b = 32'h00000001; aluc = 4'b0000;
    #10;
    
    // Test signed addition (ADD)
    a = 32'h7FFFFFFF; b = 32'h00000001; aluc = 4'b0010;
    #10;

    // Test unsigned subtraction (SUBU)
    a = 32'h00000002; b = 32'h00000001; aluc = 4'b0001;
    #10;

    // Test signed subtraction (SUB)
    a = 32'h80000000; b = 32'h00000001; aluc = 4'b0011;
    #10;

    // Test bitwise AND (AND)
    a = 32'h55555555; b = 32'hAAAAAAAA; aluc = 4'b0100;
    #10;

    // Test bitwise OR (OR)
    a = 32'h55555555; b = 32'hAAAAAAAA; aluc = 4'b0101;
    #10;

    // Test bitwise XOR (XOR)
    a = 32'h55555555; b = 32'hAAAAAAAA; aluc = 4'b0110;
    #10;

    // Test bitwise NOR (NOR)
    a = 32'h55555555; b = 32'hAAAAAAAA; aluc = 4'b0111;
    #10;

    // Test Load Upper Immediate (LUI)
    a = 0; b = 32'h00001234; aluc = 4'b1000; // Note: LUI ignores a, using b[15:0]
    #10;

    // Test Signed Less Than (SLT)
    a = 32'hffffffff; b = 32'h80000000; aluc = 4'b1011;
    #10;
    a = 32'hffffffff; b = 32'h0000ffff;
    #10;
    a = 32'h00000001; b = 32'hffffffff;
    #10;
    a = 32'h0000ffff; b = 32'h00000000;
    #10;
    // Test Unsigned Less Than (SLTU)
    a = 32'h80000000; b = 32'hFFFFFFFF; aluc = 4'b1010;
    #10;

    // Test Arithmetic Right Shift (SRA)
    a = 8; b = 32'hffffffff; aluc = 4'b1100;
    #10;
    a = 1; b = 32'h0000ffff;
    #10;
    a = 17; b = 32'h0000ffff;
    #10;
    a = 31; b = 32'h0000ffff;
    #10;

    // Test Logical/Arithmetic Left Shift (SLL/SLA)
    a = 8; b = 32'hffffffff; aluc = 4'b1110;
    #10;

    // Test Logical Right Shift (SRL)
    a = 0; b = 32'h00000000; aluc = 4'b1101;
    #10;

    // End the simulation
    $stop;
end
endmodule
