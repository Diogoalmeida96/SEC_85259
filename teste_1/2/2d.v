module 2b (
                  input clk,
                  input [3:0] a,
                  output reg [11:0] c
                  );

        assign c  <= a*a*a;

endmodule
