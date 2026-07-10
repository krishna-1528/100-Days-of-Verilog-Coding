`timescale 1ns / 1ps
//Krishna Patel
module full_adder(  input A,B,Cin, 
                    output S, Cout
);

assign S = (A ^ B ^ Cin);
assign Cout = (A ^ B) & Cin;

endmodule
