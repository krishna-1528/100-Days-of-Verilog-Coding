`timescale 1ns / 1ps
//krishna
module tb();

reg [3:0]P, Q;
reg S;
wire Y;
wire Z;

ripple_carry_adder dut(.a(P), .b(Q), .cin(S), .sum(Y), .c_out(Z));

initial begin

$display("Time | P Q S | Y Z");
$monitor("%t, %b, %b, %b, %b, %b", $time, P,Q,S, Y,Z);

P = 4'b0000; Q = 4'b0000; S = 1'b1; #10;
P = 4'b0001; Q = 4'b0100; S = 1'b0; #10;
P = 4'b1010; Q = 4'b0001; S = 1'b1; #10;
P = 4'b0100; Q = 4'b0101; S = 1'b0; #10;
P = 4'b0011; Q = 4'b1100; S = 1'b1; #10;

$finish;
end
endmodule
