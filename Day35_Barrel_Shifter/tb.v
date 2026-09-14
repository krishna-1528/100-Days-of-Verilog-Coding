`timescale 1ns / 1ps
                        //krishna
module tb();

reg [3:0] P;
reg [1:0] Q;
wire [3:0] Z;

barrel_shifter dut(.w(P), .sel(Q), .y(Z));

initial begin

$display("Time  |  P  Q  |  Z");
$monitor("%t, %b, %b, %b", $time, P, Q, Z);
        
        P = 4'b1011;
        Q = 2'b00; #10;
        Q = 2'b01; #10;
        Q = 2'b10; #10;
        Q = 2'b11; #10;
        

$finish;
end
endmodule
