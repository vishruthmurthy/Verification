module counter_4_bit (clk, rst, count);

 input clk, rst;
 output [3:0] count;
 reg [3:0] temp_count;

 assign count= temp_count;

  always @(posedge clk)
  begin

   if (!rst)
    temp_count<= 4'b0000;
   else 
    temp_count<= temp_count+ 1;

  end

endmodule
