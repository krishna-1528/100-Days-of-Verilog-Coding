`timescale 1ns / 1ps
//Krishhna Patel
module tb();

reg p,q,m;
wire n,o;

full_subtractor dut(.a(p), .b(q), .bin(m), .diff(n), .bout(o));

initial begin

$display("Time  |  Input1  Input2  Input3  |  Difference  Bout");
$monitor("%t, %b, %b, %b, %b, %b",$time, p, q,m, n, o);

p=0; q=0; m=0; #10;
p=0; q=0; m=1; #10;
p=0; q=1; m=0; #10;
p=0; q=1; m=1; #10;
p=1; q=0; m=0; #10;
p=1; q=0; m=1; #10;
p=1; q=1; m=0; #10;
p=1; q=1; m=1; #10;

$finish;
end
endmodule
