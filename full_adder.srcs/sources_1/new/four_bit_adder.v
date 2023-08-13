`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2023 16:24:33
// Design Name: 
// Module Name: four_bit_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module four_bit_adder (A, B, Cin, S, Cout);

// Declare the inputs and outputs
input [3:0] A, B;
input Cin;
output [3:0] S;
output Cout;
wire w1, w2, w3;

// Instantiate the 1-bit adder circuit
one_bit_adder fa0 (A[0], B[0], Cin, S[0], w1);
one_bit_adder fa1 (A[1], B[1], w1, S[1], w2);
one_bit_adder fa2 (A[2], B[2], w2, S[2], w3);
one_bit_adder fa3 (A[3], B[3], w3, S[3], Cout);

endmodule
