`timescale 1ns / 1ps
                    //krishna
module jk_ff(
                input clk, 
                input rst,
                input J, 
                input K,          
                output reg Q = 1'b0     // Initialize Q to 0 at simulation start        // This holds the state output
);
    
   always @(posedge clk) begin
   
      if (rst) begin
           Q <= 1'b0;      // Reset output to 0
      end
      
      else begin    
      
           case ({J, K})
           2'b00 : Q <= Q;      // Hold state (corresponds to Qn row)
           2'b01 : Q <= 1'b0;   // Reset state
           2'b10 : Q <= 1'b1;   // Set state
           2'b11 : Q <= ~Q;     // Toggle state
           endcase
           
      end  
   end
    
endmodule
