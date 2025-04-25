`timescale 1ns / 1ps

module fulladder_tb;

    // Testbench variables
    reg A;         // Input A
    reg B;         // Input B
    reg Cin;       // Carry input
    wire Sum;      // Sum output
    wire Cout;     // Carry output

    // Instantiate the FullAdder module
    fulladder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Test procedure
    initial begin
        $monitor("A = %b, B = %b, Cin = %b | Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);
        
        // Apply test cases
        A = 0; B = 0; Cin = 0; #10; // Test case 1
        A = 0; B = 0; Cin = 1; #10; // Test case 2
        A = 0; B = 1; Cin = 0; #10; // Test case 3
        A = 0; B = 1; Cin = 1; #10; // Test case 4
        A = 1; B = 0; Cin = 0; #10; // Test case 5
        A = 1; B = 0; Cin = 1; #10; // Test case 6
        A = 1; B = 1; Cin = 0; #10; // Test case 7
        A = 1; B = 1; Cin = 1; #10; // Test case 8

        $finish; // End simulation
    end

endmodule

