`timescale 1ns / 1ps

module full_subtractor (
                            input a,
                            input b,
                            input bin,
                            output diff,
                            output bout 
);                                             //krishna
    wire not_a, w1, w2, w3;
    
 // Diff = A ? B ? Bin
    xor u1 (w1, a, b);
    xor u2 (diff, w1, bin);
    
 // Bout = (~A & B) | (~(A ? B) & Bin)
    not u3 (not_a, a);
    and u4 (w2, not_a, b);
    
    wire not_w1;
    not u5 (not_w1, w1);
    and u6 (w3, not_w1, bin);
    
    or  u7 (bout, w2, w3);
endmodule

module eight_bit_sub(
                                input  [7:0] A,
                                input  [7:0] B,
                                input   Bin,        
                                output [7:0] Diff,
                                output  Bout 
    );
    
   wire [6:0] borrow_chain;
   
    full_subtractor fs0 (.a(A[0]), .b(B[0]), .bin(Bin), .diff(Diff[0]), .bout(borrow_chain[0]));
    full_subtractor fs1 (.a(A[1]), .b(B[1]), .bin(borrow_chain[0]), .diff(Diff[1]), .bout(borrow_chain[1]));
    full_subtractor fs2 (.a(A[2]), .b(B[2]), .bin(borrow_chain[1]), .diff(Diff[2]), .bout(borrow_chain[2]));
    full_subtractor fs3 (.a(A[3]), .b(B[3]), .bin(borrow_chain[2]), .diff(Diff[3]), .bout(borrow_chain[3]));
    full_subtractor fs4 (.a(A[4]), .b(B[4]), .bin(borrow_chain[3]), .diff(Diff[4]), .bout(borrow_chain[4]));
    full_subtractor fs5 (.a(A[5]), .b(B[5]), .bin(borrow_chain[4]), .diff(Diff[5]), .bout(borrow_chain[5]));
    full_subtractor fs6 (.a(A[6]), .b(B[6]), .bin(borrow_chain[5]), .diff(Diff[6]), .bout(borrow_chain[6]));
    full_subtractor fs7 (.a(A[7]), .b(B[7]), .bin(borrow_chain[6]), .diff(Diff[7]), .bout(Bout));
    
endmodule
