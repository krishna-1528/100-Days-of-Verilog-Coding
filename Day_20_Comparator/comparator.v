module comparator (
//krishna
                    input [2:0]A,
                    input [2:0]B,
                    output reg A_Gt_B,
                    output reg A_Lt_B,
                    output reg A_Eq_B
               );


 always @(*) begin
        
        A_Gt_B = 1'b0;
        A_Lt_B = 1'b0;
        A_Eq_B = 1'b0;
        
        if (A > B) 
        begin
            A_Gt_B = 1'b1;
        end
        
        else if (A < B) 
        begin
            A_Lt_B = 1'b1;
        end
        
        else 
        begin
            A_Eq_B = 1'b1;
        end
  
    end
endmodule




