// scoreboard

module scoreboard(adder_if.slave sb_if);
  always @(posedge sb_if.sum)

begin
    if (sb_if.sum != (sb_if.a + sb_if.b)) 
	$fatal ("Mismatch: Sum=%b, Expected=%b", sb_if.sum, sb_if.a + sb_if.b);
  end

endmodule
