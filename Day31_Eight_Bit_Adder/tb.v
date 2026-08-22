module tb();

reg [7:0] P, Q;   
reg Y;           
wire [7:0] X;     
wire Z;           


eight_bit_adderr dut(.a(P), .b(Q), .cin(Y), .sum(X), .cout(Z));

initial begin
    $display("Time  |  P         Q         Y  |  X         Z");
    
    $monitor("%t  |  %b  %b  %b  |  %b  %b", $time, P, Q, Y, X, Z);

    
    P = 8'd0;   Q = 8'd0;   Y = 0; #10;
    P = 8'd0;   Q = 8'd0;   Y = 1; #10;
    P = 8'd1;   Q = 8'd0;   Y = 0; #10;
    P = 8'd15;  Q = 8'd5;   Y = 1; #10; 
    P = 8'd255; Q = 8'd1;   Y = 0; #10; 

    $finish;
end
endmodule
