`timescale 1ns/1ps

module traffic_light_controller_tb;

    reg clk;
    reg reset;

    wire red;
    wire yellow;
    wire green;

    traffic_light_controller uut (
        .clk(clk),
        .reset(reset),
        .red(red),
        .yellow(yellow),
        .green(green)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        // Create waveform file
        $dumpfile("simulation.vcd");
        $dumpvars(0, traffic_light_controller_tb);

        clk = 0;
        reset = 1;

        #10;
        reset = 0;

        // Run simulation
        #100;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | Reset=%b | Red=%b | Yellow=%b | Green=%b",
                 $time, reset, red, yellow, green);
    end

endmodule