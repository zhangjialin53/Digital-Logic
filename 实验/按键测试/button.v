module button (
    input clk,
    input rst,
    input button_input,
    output reg [15:0] time_display
);

    reg [31:0] clk_div;
    reg clk_slow;

    // Clock Divider
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            clk_div <= 0;
            clk_slow <= 0;
        end else begin
            clk_div <= clk_div + 1;
            if (clk_div == 50000000) begin
                clk_slow <= ~clk_slow;
                clk_div <= 0;
            end
        end
    end

    // Time Display Control
    always @(posedge clk_slow or posedge rst) begin
        if (rst) begin
            time_display <= 16'b0;
        end else if (button_input) begin
            time_display <= time_display + 1;
        end
    end

endmodule
