module count_4 (clk,rst,q);
input logic clk, rst;
output logic [3:0]q;

always @(posedge clk)
begin
if(rst)
q<=4'b0
else
q<=q+1;
end

endmodule
