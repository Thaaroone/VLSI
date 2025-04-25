`timescale 1ns/1ps
module fulladder(
    input A,        // First input bit
    input B,        // Second input bit
    input Cin,      // Carry input
    output Sum,     // Sum output
    output Cout     // Carry output
);

    // Logic for sum and carry
    assign Sum = A ^ B ^ Cin;      // XOR operation for sum
    assign Cout = (A & B) | (B & Cin) | (A & Cin); // Carry-out logic

endmodule

