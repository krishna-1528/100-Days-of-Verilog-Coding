`timescale 1ns / 1ps
//krishna
module tb();

reg [3:0]P;
wire [3:0]Q;

bin_to_gray dut(.bin_in(P), .gray_out(Q));

initial begin

$display("Time  |  Input  |  Output");
$monitor("%t, %b, %b",$time, P, Q);

P = 3'b000; #10;
P = 3'b001; #10;
P = 3'b010; #10;
P = 3'b011; #10;

$finish;
end
endmodule
