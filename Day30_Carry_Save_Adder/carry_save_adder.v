module full_adder(
    input a,
    input b,
    input cin,
    output S,
    output cout
);
//krishna
    wire w1, w2, w3;

    xor (w1, a, b);
    xor (S, w1, cin);
    and (w2, a, b);
    and (w3, w1, cin);
    or  (cout, w2, w3);

endmodule

module carry_save_adder(
    input  [3:0] A,
    input  [3:0] B,
    input  [3:0] C,
    output [4:0] S_out,
    output C_out
);

    wire [3:0] R;
    wire [3:0] K;
    wire [3:0] rca_carry;

    full_adder fa0(.a(A[0]), .b(B[0]), .cin(C[0]), .S(R[0]), .cout(K[0]));
    full_adder fa1(.a(A[1]), .b(B[1]), .cin(C[1]), .S(R[1]), .cout(K[1]));
    full_adder fa2(.a(A[2]), .b(B[2]), .cin(C[2]), .S(R[2]), .cout(K[2]));
    full_adder fa3(.a(A[3]), .b(B[3]), .cin(C[3]), .S(R[3]), .cout(K[3]));

    full_adder rca0(
        .a(R[0]),
        .b(1'b0),
        .cin(1'b0),
        .S(S_out[0]),
        .cout(rca_carry[0])
    );

    full_adder rca1(
        .a(R[1]),
        .b(K[0]),
        .cin(rca_carry[0]),
        .S(S_out[1]),
        .cout(rca_carry[1])
    );

    full_adder rca2(
        .a(R[2]),
        .b(K[1]),
        .cin(rca_carry[1]),
        .S(S_out[2]),
        .cout(rca_carry[2])
    );

    full_adder rca3(
        .a(R[3]),
        .b(K[2]),
        .cin(rca_carry[2]),
        .S(S_out[3]),
        .cout(rca_carry[3])
    );

   full_adder rca4 (
    .a(1'b0),
    .b(K[3]),
    .cin(rca_carry[3]),
    .S(S_out[4]),
    .cout(C_out)

    );

endmodule
