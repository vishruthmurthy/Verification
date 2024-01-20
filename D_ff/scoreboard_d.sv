module scoreboard (d_ff_if.slave sb_if);

always@(sb_if.d) begin
if(sb_if.d!= sb_if.q)
//$fatal("error");

end

endmodule
