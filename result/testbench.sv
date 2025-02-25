// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module tb_array_multiplier_4bit;
    reg [3:0] A, B;
    wire [7:0] P;
    integer i, j;

    // Instantiate the DUT (Device Under Test)
    array_multiplier_4bit dut(A, B, P);

    initial begin
        $monitor($time, "ns\t A=%b, B=%b, P=%b", A, B, P);
        
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                A = i;
                B = j;
                #5;
            end
        end
    end

    initial begin
        $dumpfile("array_multiplier_4bit.vcd");
        $dumpvars(1, dut);
    end
endmodule
