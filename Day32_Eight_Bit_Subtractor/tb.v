`timescale 1ns / 1ps
                           //krishna
module tb();

reg [7:0]P;
reg [7:0]Q;
reg S;
wire [7:0]Y;
wire Z;

eight_bit_sub dut(.A(P),
                  .B(Q),
                  .Bin(S),
                  .Diff(Y),
                  .Bout(Z)  
                  );

initial begin

$display("Time  |  P  Q  S  |  Y  Z");
$monitor("%t, %b, %b, %b, %b, %b",$time, P, Q, S, Y, Z);

//truth-table cases

  P = 8'd15; Q = 8'd5; S = 1'b0; #10;
  P = 8'd20; Q = 8'd4; S = 1'b0; #10;
  P = 8'd25; Q = 8'd15; S = 1'b0; #10;
  P = 8'd11; Q = 8'd5; S = 1'b0; #10;
  
$finish;
end
endmodule
