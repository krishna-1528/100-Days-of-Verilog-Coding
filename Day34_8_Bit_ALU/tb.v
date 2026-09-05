`timescale 1ns / 1ps

module tb();

reg [7:0] P;
reg [7:0] Q;
reg [3:0] S;
wire [7:0] T;
wire Y;
wire Z;

eight_bit_alu dut(
    .a(P),
    .b(Q),
    .sel(S),
    .alu_out(T),
    .cout(Y)
);

integer i;

initial begin
    $monitor("Time=%0t | P=%d | Q=%d | S=%d | T=%d | Y=%d", 
             $time, P, Q, S, T, Y);

    for (i = 0; i < 16; i = i + 1) begin
        P = 8'd10;
        Q = 8'd5;
        S = i;
        #10;
    end

    $finish;
end

endmodule
