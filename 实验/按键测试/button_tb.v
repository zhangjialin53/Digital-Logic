`timescale 1ns / 1ps

module button_tb;

    // Inputs
    reg clk;
    reg rst;
    reg button_input;

    // Outputs
    wire [15:0] time_display;

    // Instantiate the Unit Under Test (UUT)
    button uut (
        .clk(clk),
        .rst(rst),
        .button_input(button_input),
        .time_display(time_display)
    );

    // Generate clock
    initial begin
        clk = 0;
        forever #10 clk = ~clk; // 50MHz clock
    end

    // Stimulus
    initial begin
        // Initialize inputs
        rst = 1;
        button_input = 0;

        // Release reset
        #100;
        rst = 0;

        // Simulate button press
        #100 button_input = 1;
        #200 button_input = 0;

        // Simula
