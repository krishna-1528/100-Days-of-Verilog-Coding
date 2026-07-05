`timescale 1ns / 1ps

module tb();

reg r,k;
wire i;

xor_gate dut(.a(r), .b(k), .y(i));

initial begin

$display("Time  |  Input1  | Input2  | Output");
$monitor("%t, %b, %b, %b",$time, r, k, i);

r=0; k=0; #10;
r=0; k=1; #10;
r=1; k=0; #10;
r=1; k=1; #10;

$finish;
end
endmodule
