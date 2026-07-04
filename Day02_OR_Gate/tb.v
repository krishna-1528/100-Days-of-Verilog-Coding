`timescale 1ns / 1ps

module tb();

reg c,d;
wire z;

or_gate dut(.a(c), .b(d), .y(z));

initial begin

$display("Time | Input1 Input2 | Output");
$monitor("%t, %b, %b, %b", $time, c, d, z);

c=0; d=0; #10;
c=0; d=1; #10;
c=1; d=0; #10;
c=1; d=1; #10;

$finish;

end
endmodule
