module scoreboard(and_2_if.slave mon_if);

always @(*) begin

if(mon_if.out != (mon_if.a & mon_if.b))
$fatal ("not the expected result");

end

endmodule
