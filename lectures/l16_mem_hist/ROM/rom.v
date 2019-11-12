`timescale 1ns/1ps

module rom
(
  input  [3:0] addr,
  output [5:0] data
);

reg [5:0] mem [9:0];

assign data = mem[addr];

initial 
begin
   $readmemb("memory", mem, 0, 9);
end

endmodule

