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