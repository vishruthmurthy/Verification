// monitor

module monitor(counter_4_bit_if.slave mon_if);

   always @(posedge mon_if.sum) begin
     $display ("rst=%b, count=%b", mon_if.rst, mon_if.count);

   end

endmodule
