`timescale 1ns / 1ps
//krishna
module tb();

reg [2:0] P;
wire [2:0] Q;
wire Er;
Excess3_to_BCD dut(.E(P), .error(Er), .B(Q));

initial begin

$display("Time  |  Input  |  Error i/p  |  Output");

$monitor("%0t     |  %b    |  %b   |  %b", $time, P, Er, Q);

P = 3'b000; #10;
P = 3'b001; #10;
P = 3'b010; #10;
P = 3'b011; #10;
P = 3'b100; #10;
P = 3'b101; #10;
P = 3'b110; #10;
P = 3'b111; #10;

$finish;
end
endmodule