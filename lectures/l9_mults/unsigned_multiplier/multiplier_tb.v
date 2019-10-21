`timescale 1ns / 1ps

module multiplier_tb;

   reg 	[1:0] A;
   reg 	[1:0] B;
   wire [3:0] Sum;
 		
   multiplier uut (
	    .A(A),
            .B(B),
            .Sum(Sum)
	   );
 
   
   initial begin     
      $dumpfile("multiplier.vcd");
      $dumpvars();
      A = 2;
      B = 2;

      $finish;

   end

endmodule

