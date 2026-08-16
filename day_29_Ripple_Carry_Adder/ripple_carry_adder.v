//1 bit Full Adder
module full_adder (
                    input a, b, cin,
                    output sum, cout 
);
    wire w1, w2, w3;
    //krishna
    xor g1 (w1, a, b);
    xor g2 (sum, w1, cin);
    and g3 (w2, cin, w1);
    and g4 (w3, a, b);
    or  g5 (cout, w2, w3);
endmodule

// 4-bit Ripple Carry Adder
module ripple_carry_adder(
                            input [3:0] a, b,
                            input cin,
                            output [3:0] sum,
                            output c_out 
);
    wire c1, c2, c3;
    
    full_adder fa0 (.a(a[0]), .b(b[0]), .cin(cin),  .sum(sum[0]), .cout(c1));
    full_adder fa1 (.a(a[1]), .b(b[1]), .cin(c1),   .sum(sum[1]), .cout(c2));
    full_adder fa2 (.a(a[2]), .b(b[2]), .cin(c2),   .sum(sum[2]), .cout(c3));
    full_adder fa3 (.a(a[3]), .b(b[3]), .cin(c3),   .sum(sum[3]), .cout(c_out));
    
endmodule
