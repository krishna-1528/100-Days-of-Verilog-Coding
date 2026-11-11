`timescale 1ns / 1ps
//krishna<3
module tb();

reg A;
reg B;
wire Y;

d_latch dut(.en(A), .d(B), .q(Y));

initial begin
    $display("Time  |  Enable | B | Y ");
    $monitor("%t, %d, %d, %d", $time, A, B, Y);

    A = 0; B = 0; #10;
    B = 1; #10;
    A = 1; B = 0; #10;
    B = 1; #10;
    A = 0; B = 0; #10;
    B = 1; #10;
    A = 1; B = 0; #10;

    $finish;
end
endmodule