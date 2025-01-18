module de_selector14(
    input iC,      // 输入信号 c
    input iS1,     // 选择信号 s1
    input iS0,     // 选择信号 s0
    output reg oZ0,// 输出信号 z0
    output reg oZ1,// 输出信号 z1
    output reg oZ2,// 输出信号 z2
    output reg oZ3 // 输出信号 z3
);

    always @(*) begin
        case ({iS1, iS0})
            2'b00: begin oZ0 = iC; oZ1 = 1'b0; oZ2 = 1'b0; oZ3 = 1'b0; end
            2'b01: begin oZ0 = 1'b0; oZ1 = iC; oZ2 = 1'b0; oZ3 = 1'b0; end
            2'b10: begin oZ0 = 1'b0; oZ1 = 1'b0; oZ2 = iC; oZ3 = 1'b0; end
            2'b11: begin oZ0 = 1'b0; oZ1 = 1'b0; oZ2 = 1'b0; oZ3 = iC; end
            default: begin oZ0 = 1'b0; oZ1 = 1'b0; oZ2 = 1'b0; oZ3 = 1'b0; end
        endcase
    end

endmodule