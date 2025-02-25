// Code your design here
module array_multiplier_4bit(
    input [3:0] A, // 4-bit multiplicand
    input [3:0] B, // 4-bit multiplier
    output [7:0] P // 8-bit product
);
    wire [3:0] pp0, pp1, pp2, pp3; // Partial products
    wire [7:0] sum1, sum2, sum3;
    
    // Generate Partial Products
    assign pp0 = A & {4{B[0]}};
    assign pp1 = A & {4{B[1]}};
    assign pp2 = A & {4{B[2]}};
    assign pp3 = A & {4{B[3]}};
    
    // Sum the partial products using binary addition
    assign sum1 = {pp1, 1'b0} + {1'b0, pp0};
    assign sum2 = {pp2, 2'b00} + sum1;
    assign sum3 = {pp3, 3'b000} + sum2;
    
    // Final product
    assign P = sum3;
    
endmodule
