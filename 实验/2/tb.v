`timescale 1ns / 1ps

module test_selector41;

    // 定义输入信号
    reg [3:0] iC0;
    reg [3:0] iC1;
    reg [3:0] iC2;
    reg [3:0] iC3;
    reg iS1;
    reg iS0;

    // 定义输出信号
    wire [3:0] oZ;

    // 实例化数据选择器模块
    selector41 uut (
        .iC0(iC0), 
        .iC1(iC1), 
        .iC2(iC2), 
        .iC3(iC3), 
        .iS1(iS1), 
        .iS0(iS0), 
        .oZ(oZ)
    );

    // 初始化任务
    initial begin
        // 初始化所有输入为零
        iC0 = 4'b0000;
        iC1 = 4'b0000;
        iC2 = 4'b0000;
        iC3 = 4'b0000;
        iS1 = 0;
        iS0 = 0;

        // 测试序列
        for (int sel = 0; sel < 4; sel++) begin
            // 设置输入值
            // 根据选择信号设置相应的输入值
            case(sel)
                0: begin iC0 = 4'b0001; iC1 = 4'b0000; iC2 = 4'b0000; iC3 = 4'b0000; end
                1: begin iC0 = 4'b0000; iC1 = 4'b0010; iC2 = 4'b0000; iC3 = 4'b0000; end
                2: begin iC0 = 4'b0000; iC1 = 4'b0000; iC2 = 4'b0100; iC3 = 4'b0000; end
                3: begin iC0 = 4'b0000; iC1 = 4'b0000; iC2 = 4'b0000; iC3 = 4'b1000; end
            endcase

            // 设置选择信号
            case(sel)
                0: begin iS1 = 0; iS0 = 0; end
                1: begin iS1 = 0; iS0 = 1; end
                2: begin iS1 = 1; iS0 = 0; end
                3: begin iS1 = 1; iS0 = 1; end
            endcase

            // 等待一段时间，这里假设每个测试步骤之间有10个时间单位的间隔
            #10;

            // 检查输出是否符合预期
            case(sel)
                0: if (oZ != 4'b0001) $display("ERROR at sel=%d", sel);
                1: if (oZ != 4'b0010) $display("ERROR at sel=%d", sel);
                2: if (oZ != 4'b0100) $display("ERROR at sel=%d", sel);
                3: if (oZ != 4'b1000) $display("ERROR at sel=%d", sel);
            endcase

            // 输出正确信息
            $display("PASS at sel=%d, output is %b", sel, oZ);
        end
        
        // 测试结束
        $finish;
    end

endmodule