module f_x;

        input x_is_valid,
        input [3:0] x,
	input rst,
	input clk,
        output reg [5:0] y	output y_is_valid
 
   f_x uut (
	    .a(a),
	    .clk(clk)
	   );
 
   
   initial begin     
      $dumpfile("multiplier.vcd");
      $dumpvars();
      x = 3;
      x_is_valid = 1;

      $finish;

   end

	always #10 clk = ~clk;

endmodule
