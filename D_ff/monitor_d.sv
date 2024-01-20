module monitor (d_ff_if.slave mon_if);

always@(mon_if.clk) begin
	 $monitor($time, "ns d= %b,q= %b",mon_if.d,mon_if.q);
end

endmodule
