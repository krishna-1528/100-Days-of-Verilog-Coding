`timescale 1ns / 1ps

module tb();

reg i,g;
wire l;

xnor_gate dut(".a(i), .b(g), .y(l)");

initial begin

$display("Time  |  Input1  |  Input2  |  Output");
$monitor("%t, %b, %, %b,", $time, i, g, l);

i=0; g=0; #10;
i=0; g=1; #10;
i=1; g=0; #10;
i=1; g=1; #10;

$finish;
end
endmodule
