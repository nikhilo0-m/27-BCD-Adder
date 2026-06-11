`timescale 1ns / 1ps


// BCD Adder
// Adds two BCD digits and a carry input
// Produces a valid BCD sum and carry output

module bcd_adder(
    input  [3:0] A,      // First BCD digit
    input  [3:0] B,      // Second BCD digit
    input        Cin,    // Carry input
    output [3:0] Sum,    // BCD sum output
    output       Cout    // Carry output
);

    wire [4:0] temp_sum;     // Intermediate binary sum
    wire [4:0] corrected;    // Corrected BCD result

    // Add two BCD digits and carry
    assign temp_sum = A + B + Cin;

    // BCD correction required if sum > 9
    assign corrected = (temp_sum > 9) ? (temp_sum + 6) : temp_sum;

    // Output assignments
    assign Sum  = corrected[3:0];
    assign Cout = corrected[4];

endmodule
