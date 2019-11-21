`timescale 1ns / 1ps

module 2b_tb;

   reg 	[3:0] a;
   reg clk;
   wire [11:0] c;
 		
   2b uut (
	    .a(a),
	    .clk(clk)
	   );
 
   
   initial begin     
      $dumpfile("multiplier.vcd");
      $dumpvars();
      a = 2;

      #25
      a = -2;
      #50
      $finish;

   end
	always #10 clk = ~clk;
endmodule

