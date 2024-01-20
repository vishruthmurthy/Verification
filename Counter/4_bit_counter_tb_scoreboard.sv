// scoreboard

module scoreboard(counter_4_bit_if.slave sb_if);
  always @(posedge sb_if.count)

begin
    if (sb_if.rst == 0)
     count=4'b0000; 
    else 
     count=count+1;
   // $fatal ("Mismatch: Sum=%b, Expected=%b", sb_if.count, sb_if.a + sb_if.b);
  end

endmodule
