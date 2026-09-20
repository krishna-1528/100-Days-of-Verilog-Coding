`timescale 1ns / 1ps
//krishna
module tb();

reg [7:0] A;
reg [2:0] B;
wire [7:0] Y;
wire [7:0] Z;

logical_shifter dut(.data_in(A), .shift_amt(B), .right(Y), .left(Z));

initial begin

$display("A  B  |  Y  Z");
$monitor("%t, %d, %d, %d, %d",$time, A, B, Y, Z);

A = 13; B = 0; #0;
A = 13; B = 1; #10;
A = 13; B = 2; #20;
A = 13; B = 3; #30;
A = 13; B = 4; #40;



$finish;
end
endmodule
