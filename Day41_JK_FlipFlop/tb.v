`timescale 1ns / 1ps
                    //krishna<3
module tb();

reg CLK;
reg RST;
reg j;
reg k;
wire Q;

    jk_ff dut(  
                .clk(CLK), 
                .rst(RST), 
                .J(j), 
                .K(k), 
                .Q(Q)
    );

    
    always #5 CLK = ~CLK;

    initial begin
        // Initialize signals
        CLK = 0;
        RST = 1;
        j = 0;
        k = 0;
        
        
        $display("Time | clk  rst  j  k | Q");
        $monitor("%t, %d, %d, %d, %d, %d", $time, CLK, RST, j, k, Q);

        // Hold reset active for 15ns, then release
        #15;
        RST = 0;

       
        #10; j = 0; k = 1; //  Reset state
        #10; j = 1; k = 0; //  Set state
        #10; j = 1; k = 1; //  Toggle state
        #10; j = 1; k = 1; //  Toggle state again
        #10; j = 0; k = 0; //  Hold state
        
        #20;
        $finish;
    end
endmodule