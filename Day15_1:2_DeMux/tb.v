`timescale 1ns / 1ps
//krishna
module tb();

reg P;
reg Q;
wire [1:0]T;

demux_1_2 dut(.Y(P), 
              .S(Q), 
              .D(T));

initial begin

$display("Time  |  Input1  Input2  |  Output1  Output2");
$monitor("%t, %b, %b, %b, %b",$time, P, Q, T[1], T[0],);

P = 0; Q = 0; #10;
P = 0; Q = 1; #10;
P = 1; Q = 0; #10;
P = 1; Q = 1; #10;

$finish;
end
endmodule
