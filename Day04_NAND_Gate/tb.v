`timescale 1ns / 1ps

module tb();

reg s,t;
wire x;

nand_gate dut(.a(s), .b(t), .y(x));

initial begin

$display("Time  |  Input1  |  Input2  |  Output");
$monitor("%t, %b, %b, %b", $time, s, t, x);

s=0; t=0; #10;
s=0; t=1; #10;
s=1; t=0; #10;
s=1; t=1; #10;

$finish;
end

endmodule
