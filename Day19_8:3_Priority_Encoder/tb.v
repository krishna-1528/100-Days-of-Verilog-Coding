`timescale 1ns / 1ps

module tb();

reg T;
reg [7:0] P;
wire [2:0] Q;

priority_encoder dut (
        .En(T), 
        .E(P), 
        .Y(Q)       
    );

initial begin

$display("Time | Enable | Inputs | Outputs");
$monitor("%t, %b, %b, %b",$time, T, P, Q);

        T = 1'b0; P = 8'b1111_1111; #10; 
        T = 1'b1; P = 8'b0000_0000; #10; 
        T = 1'b1; P = 8'b0000_0001; #10; 
        T = 1'b1; P = 8'b0001_1100; #10; 
        T = 1'b1; P = 8'b1000_1010; #10;

$finish;
end
endmodule
