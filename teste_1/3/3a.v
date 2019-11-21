module f_x (
                  input x_is_valid,
                  input [3:0] x,
		  input rst,
		  input clk,
                  output reg [5:0] y 
		  output y_is_valid 
                  );
 
   reg [3:0]	y_1
	
   always @(posedge clk) begin 
	if (x_is_valid)
	begin
	y <= (x >> 1) + (y_1 >> 2);
	y_1 <= y;
	y_is_valid <= 1;
	end
   end



