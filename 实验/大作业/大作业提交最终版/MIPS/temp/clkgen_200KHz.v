`timescale 1ns / 1ps

module clkgen_200KHz(
    input clk_100MHz, //input 100MHz clock signal
    output clk_200KHz //generated output 200KHz clock signal
    );
    
    // 100 x 10^6 / 200 x 10^3 / 2 = 250 <-- 8 bit counter
    reg [7:0] counter = 8'h00; //hexadecimal value - 8'b0 in binary - 0 value
    reg clk_reg = 1'b1; // 1 bit initialized as 1
    
    always @(posedge clk_100MHz) begin
        if(counter == 249) begin //if a cycle for the 200kHz clock is completed
            counter <= 8'h00; //reset counter
            clk_reg <= ~clk_reg; //inverting to high/low logic level for output
        end
        else
            counter <= counter + 1; //incrementing by 1
    end
    
    assign clk_200KHz = clk_reg; //assign the state of the output signal (1 or 0)
    
endmodule