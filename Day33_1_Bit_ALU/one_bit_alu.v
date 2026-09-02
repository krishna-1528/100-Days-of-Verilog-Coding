`timescale 1ns / 1ps

//  FULL ADDER
module full_adder (
                    input a,
                    input b,
                    input cin,
                    output sum,
                    output cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule


//  4:1 MUX
module mux4_1 (
                input d0,
                input d1,
                input d2,
                input d3,
                input [1:0] sel,
                output y
);
    assign y = (sel == 2'b00) ? d0 :
               (sel == 2'b01) ? d1 :
               (sel == 2'b10) ? d2 : d3;
endmodule


//  1-BIT ALU
module one_bit_alu (
                        input a,
                        input b,
                        input cin,
                        input [1:0] sel,
                        output result,
                        output cout
);

    wire w1, w2, w3, w4;
    wire z1, z2;
    wire x1;

    and g0 (w1, a, b);
    or  g1 (w2, a, b);

    full_adder f0 (
                    .a(a),
                    .b(b),
                    .cin(cin),
                    .sum(w3),
                    .cout(z1)
    );

    not g2 (x1, b);

    full_adder f1 (
                    .a(a),
                    .b(x1),
                    .cin(1'b1),
                    .sum(w4),
                    .cout(z2)
    );

    mux4_1 m0 (
                    .d0(w1),
                    .d1(w2),
                    .d2(w3),
                    .d3(w4),
                    .sel(sel),
                    .y(result)
    );
    

    assign cout = (sel == 2'b10) ? z1 :
                  (sel == 2'b11) ? z2 : 1'b0;

endmodule
