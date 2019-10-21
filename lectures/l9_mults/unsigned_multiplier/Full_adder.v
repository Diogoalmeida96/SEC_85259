`timescale 1ns/1ps

module Full_adder 
(
  input  A,
  input  B,
  input  c_i,
  output Sum,
  output c_o
);

   assign Sum = A ^ B ^ c_i;
   assign c_o = (A & B) | (A ^ B) & c_i;
    
endmodule
