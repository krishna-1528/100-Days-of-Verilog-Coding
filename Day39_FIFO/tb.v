`timescale 1ns / 1ps

// krishna<3

module tb();

    
    reg p;       // clk
    reg q;       // rst_n (active-low reset)
    reg s;       // wr_en
    reg t;       // rd_en
    reg  [7:0] u;       // data_in 
    wire [7:0] v;       // data_out 
    wire  x;       // full flag
    wire  y;       // empty flag

   
    fifo dut (
                .clk(p), 
                .rst_n(q), 
                .wr_en(s), 
                .rd_en(t), 
                .data_in(u), 
                .data_out(v), 
                .full(x), 
                .empty(y)
    );

    // 1. Clock Generation
    always #5 p = ~p;

        initial begin
       
        p = 0;
        q = 0;       
        s = 0;
        t = 0;
        u = 8'h00;

        
        $display("Time    | data_out | full | empty");
        $monitor("%0t ns  |   %h     |  %b   |   %b", $time, v, x, y);

        #20;
        q = 1;      
        
        @(posedge p);
        s = 1; 
        u = 8'h55;

        @(posedge p);
        u = 8'hAA;

        @(posedge p);
        s = 0; #20;
        
        @(posedge p);
        t = 1;       
        
        
        @(posedge p);
        @(posedge p);
        t = 0; #30;
        
        $finish;
    end

endmodule