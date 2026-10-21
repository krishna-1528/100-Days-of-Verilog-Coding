`timescale 1ns / 1ps
            //krishna
module tb();

reg P;
reg T;
wire Y;
wire Yn;

sr_latch dut(.S(P), .R(T), .Q(Y), .Qn(Yn));

initial begin

$display("Time  |  P  T  |  Y  Yn");
$monitor("%t, %b, %b, %b, %b", $time, P, T, Y, Yn);

        P = 0; T = 1; #10;

//Test cases
        P = 0; T = 0; #10;
        P = 0; T = 1; #10;
        P = 1; T = 0; #10;
        P = 1; T = 1; #10;

$finish;
end
endmodule
