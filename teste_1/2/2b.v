module 2b (
                  input clk,
                  input [3:0] a,
                  output reg [11:0] c
                  );

   reg signed [7:0]                  y;

   always @(posedge clk) begin 
        y <= a*a;
        c  <= y*a;
   end

endmodule


