`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/25 19:09:15
// Design Name: 
// Module Name: alu
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


module alu(
    input [31:0] a,
    input [31:0] b,
    input [3:0] aluc,
    output reg [31:0] r,
    output reg zero,
    output reg carry,
    output reg negative,
    output reg overflow
    );
        always @(*) begin
        // Default values for flags and result
        zero = 0;
        carry = 0;
        negative = 0;
        overflow = 0;
        
        case(aluc)
            4'b0000: begin // ADDU: Unsigned addition
                r = a + b;
                carry = (a + b) < a; // Carry occurs if sum < a (overflow for unsigned)
            end
            4'b0010: begin // ADD: Signed addition
                r = $signed(a) + $signed(b);
                overflow = (($signed(a) > 0 && $signed(b) > 0 && $signed(r) < 0) ||
                            ($signed(a) < 0 && $signed(b) < 0 && $signed(r) > 0));
            end
            4'b0001: begin // SUBU: Unsigned subtraction
                r = a - b;
                carry = (a < b); // Borrow occurs if a < b (underflow for unsigned)
            end
            4'b0011: begin // SUB: Signed subtraction
                r = $signed(a) - $signed(b);
                overflow = (($signed(a) > 0 && $signed(b) < 0 && $signed(r) < 0) ||
                            ($signed(a) < 0 && $signed(b) > 0 && $signed(r) > 0));
            end
            4'b0100: begin // AND: Bitwise AND
                r = a & b;
            end
            4'b0101: begin // OR: Bitwise OR
                r = a | b;
            end
            4'b0110: begin // XOR: Bitwise XOR
                r = a ^ b;
            end
            4'b0111: begin // NOR: Bitwise NOR
                r = ~(a | b);
            end
            4'b1000: begin // LUI: Load Upper Immediate
                r = {b[15:0], 16'b0};
            end
            4'b1001: begin // LUI: Load Upper Immediate
                r = {b[15:0], 16'b0};
            end
            4'b1011: begin //SLT: Signed Less Than
                r = ($signed(a) < $signed(b)) ? 32'b1 : 32'b0;
                if (a == b)
                    zero = 1;
                else
                    zero = 0;
                if (r == 1)
                    negative = 1;
                else
                    negative = 0;
            end
            4'b1010: begin //SLTU: Unsigned Less Than
                r = (a < b) ? 32'b1 : 32'b0;
                carry = (a < b); // For SLTU, carry flag indicates a < b
                if (a == b)
                    zero = 1;
                else
                    zero = 0;
            end
            4'b1100: begin // SRA: Arithmetic Right Shift
                r = $signed(b) >>> a;
                if (a > 0)
                    carry = (a < 32)?b[a - 1]:b[31];
                else
                    carry = 0;
            end
            4'b1110: begin // SLL/SLA: Logical/Arithmetic Left Shift
                r = b << a;
                carry = b[31 - a]; // Carry out is the bit shifted out
            end
            4'b1111: begin // SLL/SLA: Logical/Arithmetic Left Shift
                r = b << a;
                carry = b[31 - a]; // Carry out is the bit shifted out
            end
            4'b1101: begin // SRL: Logical Right Shift
                r = b >> a;
                if (a > 0)
                    carry = b[a - 1]; // Carry out is the bit shifted out
                else
                    carry = 0;
            end
            default: begin
                r = 32'b0;
            end
        endcase
 
        // Set zero flag if result is zero
        if (aluc != 4'b1011 && aluc != 4'b1010)
            zero = (r == 32'b0);
 
        // Set negative flag for signed operations
        if (aluc != 4'b1011)
            negative = r[31];
    end
endmodule
