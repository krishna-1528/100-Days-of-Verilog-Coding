`timescale 1ns / 1ps

module tb();

reg d,e;
wire f;

nor_gate dut (.a(d), .b(e), .y(f));

initial begin

$display("Time  |  Input1  |  Input2  | Output");
$monitor("%t, %b, %b, %b", $time, d, e, f);

d=0; e=0; #10;
d=0; e=1; #10;
d=1; e=0; #10;
d=1; e=1; #10;

$finish;
end
endmodule
