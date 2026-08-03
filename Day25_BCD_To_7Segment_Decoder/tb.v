module tb();
//krishna
reg [3:0]P;
wire [6:0]Q;
integer i;

bcd_7segment_decoder dut(.bcd(P), .seg(Q));

initial begin

$display("Time  |  BCD  |  Segment");
$monitor("%t, %b, %b",$time, P, Q);

for (i = 0; i < 16; i = i + 1) begin
    P = i;
    #10;
end 

$finish;
end
endmodule
