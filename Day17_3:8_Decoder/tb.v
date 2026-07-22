`timescale 1ns / 1ps
//krishna
module tb();

reg [2:0]P;
reg E;
wire [7:0]Q;

decoder_3_8 dut(.S(P), .En(E), .D(Q));

initial begin

$display("Time  |  Enable  |  Inputs  |  Outputs  ");
$monitor("%t, %b, %b, %b",$time, P, E, Q);


    E = 1'b0; P = 3'b000; #10;
    E = 1'b0; P = 3'b001; #10;
    E = 1'b0; P = 3'b010; #10;
    E = 1'b0; P = 3'b011; #10;
    E = 1'b0; P = 3'b100; #10;
    E = 1'b0; P = 3'b101; #10;
    E = 1'b0; P = 3'b110; #10;
    E = 1'b0; P = 3'b111; #10;

    E = 1'b1; P = 3'b000; #10;
    E = 1'b1; P = 3'b001; #10;
    E = 1'b1; P = 3'b010; #10;
    E = 1'b1; P = 3'b011; #10;
    E = 1'b1; P = 3'b100; #10;
    E = 1'b1; P = 3'b101; #10;
    E = 1'b1; P = 3'b110; #10;
    E = 1'b1; P = 3'b111; #10;


$finish;
end
endmodule
