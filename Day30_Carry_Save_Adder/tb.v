`timescale 1ns / 1ps

module tb;

reg [3:0] P;
reg [3:0] Q;
reg [3:0] S;
wire [4:0] l;
wire m;

carry_save_adder dut (

                        .A(P),                       
                        .B(Q),                        
                        .C(S),                        
                        .S_out(l),                        
                        .C_out(m)

);

initial begin

$display("Time, P, Q, S, l, m");
$monitor("%t, %b, %b, %b, %b, %b", $time, P, Q, S, l, m);

                P = 4'b0000; Q = 4'b0000; S = 4'b0000; #10;
                
                P = 4'b0001; Q = 4'b0010; S = 4'b0011; #10;
                
                P = 4'b0101; Q = 4'b0011; S = 4'b0001; #10;
                
                P = 4'b1111; Q = 4'b0001; S = 4'b0001; #10;
                
                P = 4'b1010; Q = 4'b0101; S = 4'b0011; #10;
                
                P = 4'b1111; Q = 4'b1111; S = 4'b1111; #10;
                
                P = 4'b1001; Q = 4'b0110; S = 4'b0100; #10;

$finish;
end
endmodule
