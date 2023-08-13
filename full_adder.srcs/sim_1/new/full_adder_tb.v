`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2023 16:26:07
// Design Name: 
// Module Name: full_adder_tb
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

module full_adder_tb;
reg [3:0] A, B;
reg Cin;
wire [3:0] S;
wire Cout;

//instantiate the module to simulate
four_bit_adder tb_one (A, B, Cin, S, Cout);

// Monitor the inputs and output
//initial
//begin
 //   $monitor ($time, "A = %b, B = %b, Cin = %b, S = %b, Cout = %b\n", A, B, Cin, S, Cout);
//end     

//perform the simulation
initial 
begin
    #0  A=4'd0; B=4'd0; Cin=1'b0;
    #25 A=4'd4; B=4'd3; Cin=1'b1;
    #30 A=4'd3; B=4'd7; Cin=1'b1;
    #30 A=4'd8; B=4'd4; Cin=1'b0;
    #30 A=4'd5; B=4'd9; Cin=1'b1;
    #30
    $display ("End of Simulation");
end

endmodule
