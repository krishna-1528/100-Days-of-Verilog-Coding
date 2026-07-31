`timescale 1ns / 1ps
//krishna
module tb();

reg [3:0]P;
wire [3:0]Q;

BCD_to_Excess3 dut(.I(P), .Y(Q));

initial begin

$display("Time  |  Input  |  Output");
$monitor("%t, %b, %b",$time, P, Q );

P = 4'b00_00; #10;
P = 4'b00_01; #10;
P = 4'b00_10; #10;
P = 4'b00_11; #10;
P = 4'b01_00; #10;

$finish;
end
endmodule
