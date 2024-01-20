// monitor

module monitor(adder_if.slave mon_if);
   
always @(*) begin
     $display ("A=%b, B =%b, Sum= %b", mon_if.a, mon_if.b, mon_if.sum);
   end

endmodule

