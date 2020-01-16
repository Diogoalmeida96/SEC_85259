`timescale 1ns / 1ps

module RAM (
    input [9:0] address,
    input [7:0] data_in,
    input we,
    input clk,
    output [7:0] data_out
);

reg [7:0] mem [0:1023];

always @(posedge clk) begin 

	if(we) begin
           mem[address] =  data_in;
        end
        else begin
           data_out = mem[address];
        end 
 end
initial
begin
    $readmemb("memory",mem,0,1023);
end
endmodule
