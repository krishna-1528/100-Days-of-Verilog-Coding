`timescale 1ns / 1ps
//krishna
module tb();

reg [2:0] P;
reg [2:0] Q;
wire S;
wire T;
wire U;

comparator dut (
    .A(P), 
    .B(Q), 
    .A_Gt_B(S), 
    .A_Lt_B(T), 
    .A_Eq_B(U) 
);

initial begin
    $display("Time  |  P  Q  |  S  T  U");
    $monitor("%t, %b, %b, %b, %b, %b", $time, P, Q, S, T, U);

    P = 3'd0; Q = 3'd0; #10;
    P = 3'd0; Q = 3'd1; #10;
    P = 3'd1; Q = 3'd0; #10;
    P = 3'd1; Q = 3'd1; #10;

    $finish;
end

endmodule
