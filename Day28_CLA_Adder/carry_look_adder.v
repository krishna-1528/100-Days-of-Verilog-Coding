`timescale 1ns / 1ps
//krishna
module carry_look_adder(

                        output [3:0] S,
                        output Cout,
                        output PG, GG,
                        input [3:0] A, B,
                        input Cin   
);

    wire [3:0] G, P, C;

   //Genrate Block
    assign G = A & B; 
    assign P = A ^ B; 

    // CLA Logic
    assign C[0] = Cin;
    assign C[1] = G[0] | (P[0] & Cin);
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & Cin);
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & Cin);
    assign Cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & Cin);

    // Sum Logic
    assign S = P ^ C;
    assign PG = P[3] & P[2] & P[1] & P[0];
    assign GG = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]);

endmodule
