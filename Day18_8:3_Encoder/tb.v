`timescale 1ns / 1ps
//krishna
module tb();

reg Enable;
reg [7:0]P;
wire [2:0]Q;

encoder_8_3 dut (.En(Enable), .E(P), .Y(Q));

initial begin

$display("Time  |  Enable  |  Inputs  | Outputs");
$monitor("%t, %b, %b, %b",$time, Enable, P, Q);

        Enable = 1'b0; P = 8'b0000_0000; #10;
        Enable = 1'b0; P = 8'b1111_1111; #10;
        
     
        Enable = 1'b1; P = 8'b0000_0001; #10; 
        Enable = 1'b1; P = 8'b0001_0000; #10; 
        Enable = 1'b1; P = 8'b1100_0101; #10; 
        Enable = 1'b1; P = 8'b0000_0000; #10;

$finish;
end
endmodule
