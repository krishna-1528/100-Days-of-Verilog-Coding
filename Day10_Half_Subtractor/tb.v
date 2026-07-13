`timescale 1ns / 1ps

module tb();

reg p, q;
wire m, n;

half_sub dut (.a(p), .b(q), .d(m), .bout(n));

initial begin

$display("Input1  Input2  |  Difference   Borrow");
$monitor("%b, %b, %b, %b", p,q,m,n);

p=0; q=0; #10;
p=0; q=1; #10;
p=1; q=0; #10;
p=1; q=1; #10;

$finish;
end
endmodule
