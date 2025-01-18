`timescale 1ns / 1ps

module test_selector41;

    // ���������ź�
    reg [3:0] iC0;
    reg [3:0] iC1;
    reg [3:0] iC2;
    reg [3:0] iC3;
    reg iS1;
    reg iS0;

    // ��������ź�
    wire [3:0] oZ;

    // ʵ��������ѡ����ģ��
    selector41 uut (
        .iC0(iC0), 
        .iC1(iC1), 
        .iC2(iC2), 
        .iC3(iC3), 
        .iS1(iS1), 
        .iS0(iS0), 
        .oZ(oZ)
    );

    // ��ʼ������
    initial begin
        // ��ʼ����������Ϊ��
        iC0 = 4'b0000;
        iC1 = 4'b0000;
        iC2 = 4'b0000;
        iC3 = 4'b0000;
        iS1 = 0;
        iS0 = 0;

        // ��������
        for (int sel = 0; sel < 4; sel++) begin
            // ��������ֵ
            // ����ѡ���ź�������Ӧ������ֵ
            case(sel)
                0: begin iC0 = 4'b0001; iC1 = 4'b0000; iC2 = 4'b0000; iC3 = 4'b0000; end
                1: begin iC0 = 4'b0000; iC1 = 4'b0010; iC2 = 4'b0000; iC3 = 4'b0000; end
                2: begin iC0 = 4'b0000; iC1 = 4'b0000; iC2 = 4'b0100; iC3 = 4'b0000; end
                3: begin iC0 = 4'b0000; iC1 = 4'b0000; iC2 = 4'b0000; iC3 = 4'b1000; end
            endcase

            // ����ѡ���ź�
            case(sel)
                0: begin iS1 = 0; iS0 = 0; end
                1: begin iS1 = 0; iS0 = 1; end
                2: begin iS1 = 1; iS0 = 0; end
                3: begin iS1 = 1; iS0 = 1; end
            endcase

            // �ȴ�һ��ʱ�䣬�������ÿ�����Բ���֮����10��ʱ�䵥λ�ļ��
            #10;

            // �������Ƿ����Ԥ��
            case(sel)
                0: if (oZ != 4'b0001) $display("ERROR at sel=%d", sel);
                1: if (oZ != 4'b0010) $display("ERROR at sel=%d", sel);
                2: if (oZ != 4'b0100) $display("ERROR at sel=%d", sel);
                3: if (oZ != 4'b1000) $display("ERROR at sel=%d", sel);
            endcase

            // �����ȷ��Ϣ
            $display("PASS at sel=%d, output is %b", sel, oZ);
        end
        
        // ���Խ���
        $finish;
    end

endmodule