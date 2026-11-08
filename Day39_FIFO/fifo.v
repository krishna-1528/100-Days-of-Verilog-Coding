module fifo#(
        
            //krishna<3
            
            parameter n = 8,                        
            parameter FIFO_DEPTH = 16                
)   
      (
            input  wire  clk,                   
            input  wire  rst_n,                
            input  wire  wr_en,                 
            input  wire  rd_en,                 
            input  wire [n-1:0] data_in,        
            output reg  [n-1:0] data_out,       
            output wire  full,                  
            output wire  empty                  
);

    // 1. Core Memory Array
    reg [n-1:0] fifo_mem [0:FIFO_DEPTH-1];


    // 2. Pointer Declaration 
    reg [$clog2(FIFO_DEPTH):0] wr_ptr;
    reg [$clog2(FIFO_DEPTH):0] rd_ptr;

    // 3. Write Logic
    always @(posedge clk or negedge rst_n) begin
    
                                        if (!rst_n) 
                                        begin
                                            wr_ptr <= 0;
                                        end 
                                        else if (wr_en && !full) 
                                        begin
                                            fifo_mem[wr_ptr[$clog2(FIFO_DEPTH)-1:0]] <= data_in;
                                            wr_ptr <= wr_ptr + 1;
                                        end
                                   end

    // 4. Read Logic
    always @(posedge clk or negedge rst_n) begin
    
                                        if (!rst_n) 
                                        begin
                                            rd_ptr <= 0;
                                            data_out <= 0;
                                        end 
                                        
                                        else if (rd_en && !empty) 
                                        begin
                                            data_out <= fifo_mem[rd_ptr[$clog2(FIFO_DEPTH)-1:0]];
                                            rd_ptr <= rd_ptr + 1;
                                       end
                                  end
                                
 
    assign empty = (wr_ptr == rd_ptr);
    
    
    assign full  = (wr_ptr[$clog2(FIFO_DEPTH)] != rd_ptr[$clog2(FIFO_DEPTH)]) &&
                   (wr_ptr[$clog2(FIFO_DEPTH)-1:0] == rd_ptr[$clog2(FIFO_DEPTH)-1:0]);

endmodule

