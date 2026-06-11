`timescale 1ns/1ps

// Testbench for BCD Adder
module bcd_adder_tb;

    reg  [3:0] A;
    reg  [3:0] B;
    reg        Cin;
    wire [3:0] Sum;
    wire       Cout;

    // Instantiate the BCD Adder
    bcd_adder uut (.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));

    initial begin

        $display("A B Cin | Cout Sum");
        $monitor("%d %d  %b  |  %b    %d",
                  A, B, Cin, Cout, Sum);

        // Test Case 1: 3 + 4 = 7
        A = 4'd3; B = 4'd4; Cin = 0; #10;

        // Test Case 2: 5 + 5 = 10
        A = 4'd5; B = 4'd5; Cin = 0; #10;

        // Test Case 3: 8 + 7 = 15
        A = 4'd8; B = 4'd7; Cin = 0; #10;

        // Test Case 4: 9 + 9 = 18
        A = 4'd9; B = 4'd9; Cin = 0; #10;

        // Test Case 5: 6 + 2 + Carry = 9
        A = 4'd6; B = 4'd2; Cin = 1; #10;

        // Test Case 6: 9 + 8 + Carry = 18
        A = 4'd9; B = 4'd8; Cin = 1; #10;

        $finish;
    end

endmodule