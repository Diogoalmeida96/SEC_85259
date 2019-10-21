`timescale 1ns/1ps

module multiplier
(
  input [1:0] A,
  input [1:0] B,
  output [3:0] Sum
);

  wire carry;	
  assign Sum[0] = A[0]&B[0];
  
  Full_adder a0 (.A(A[0]&B[1]),
                .B(A[1]&B[0]),
	        .c_i(1'b0),
                .Sum(Sum[1]),
 	        .c_o(carry)
               );

  Full_adder a1 (.A(A[1]&B[1]),
                .B(1'b0),
	        .c_i(carry),
                .Sum(Sum[2]),
 	        .c_o(Sum[3])
               );

endmodule
