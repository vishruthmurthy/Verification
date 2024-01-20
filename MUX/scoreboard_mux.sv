module scoreboard(mul_4_1_if.slave sb_if);

always @(*) begin

if((sb_if.out)!= (sb_if.s1 & sb_if.s2)&(sb_if.d))
$fatal("unexpected error");

end

endmodule

//(mon_if.out != (~mon_if.s1 & ~mon_if.s2 & mon_if.a) | (~mon_if.s1 & mon_if.s2 & mon_if.b) | (mon_if.s1 &~mon_if.s2 & mon_if.c)|(mon_if.s1 & mon_if.s2 & mon_if.d))
