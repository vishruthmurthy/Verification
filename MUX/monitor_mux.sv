module monitor(mul_4_1_if.slave mon_if);

always @(*) begin

$strobe($time,"a= %b,b= %b,c= %b,d= %b,s1= %b,s2= %b,out= %b",mon_if.a,mon_if.b,mon_if.c,mon_if.d,mon_if.s1,mon_if.s2,mon_if.out);

end

endmodule
