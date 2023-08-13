module half_adder (A, B, S, Cout);

// Declare the inputs and outputs
input A, B;
output S, Cout;

// Implement the circuit design
assign S = A ^ B;
assign Cout = A & B;

endmodule