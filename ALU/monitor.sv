module monitor (adder_if.mon_if mon_if);

always @ (mon_if.a, mon_if.b) begin

$monitor ("A=%b, B=%b, S=%b", mon_if.a, mon_if.b, mon_if.s);

end
endmodule
