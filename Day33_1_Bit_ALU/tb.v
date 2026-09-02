`timescale 1ns / 1ps

module tb();
                //krishna
    reg P;
    reg Q;
    reg T;
    reg [1:0] M;
    wire N;
    wire D;

    one_bit_alu dut (
                        .a(P),
                        .b(Q),
                        .cin(T),
                        .sel(M),
                        .result(N),
                        .cout(D)
    );

    initial begin
        $monitor("Time=%t | a=%b b=%b cin=%b sel=%b | result=%b cout=%b", $time, P, Q, T, M, N, D);

        P = 0; Q = 0; T = 0; M = 2'b00; #10;
        P = 1; Q = 1; T = 0; M = 2'b00; #10;

        P = 1; Q = 0; T = 0; M = 2'b01; #10;
        P = 0; Q = 0; T = 0; M = 2'b01; #10;

        P = 1; Q = 1; T = 0; M = 2'b10; #10;
        P = 1; Q = 1; T = 1; M = 2'b10; #10;

        P = 1; Q = 0; T = 0; M = 2'b11; #10;
        P = 0; Q = 1; T = 0; M = 2'b11; #10;

        $finish;
    end

endmodule