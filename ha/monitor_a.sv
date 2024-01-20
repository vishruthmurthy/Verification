module monitor(and_2_if.slave mon_if);

always @(*) begin

$monitor("a= %b, b= %b, out= %b", mon_if.a, mon_if.b, mon_if.out);

end

endmodule
