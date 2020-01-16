`timescale 1ns / 1ps
`include "../a/RAM.v"

module RAM_X (
    input [15:0] address,
    input [7:0] data_in,
    input we,
    input clk,
    output [7:0] data_out
	
);


genvar i;
    for (i = 0 ; i < 32; i = i + 1) begin : RAM
        RAM RAM0 (
            .address(address[9:0]),
            .data_out(data_out[i]),
	    .data_in(data_in[i])
        );
    end



endmodule
