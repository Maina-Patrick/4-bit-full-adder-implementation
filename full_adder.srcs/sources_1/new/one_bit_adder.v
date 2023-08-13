`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2023 16:23:36
// Design Name: 
// Module Name: one_bit_adder
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

module one_bit_adder (A, B, Cin, S, Cout);

// Declare the inputs and outputs
input A, B, Cin;
output S, Cout;
wire w1, w2, w3;

//Instantiate the half adder circuit
half_adder Q0 (A, B, w1, w2);
half_adder Q1 (Cin, w1, S, w3);
assign Cout = w3 | w2;

endmodule
