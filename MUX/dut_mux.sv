module mul_4_1(a,b,c,d,s1,s2,out);

input a,b,c,d,s1,s2;
output reg out;

always @(*)

case({s2,s1})
2'b00: out<= a;
2'b01: out<= b;
2'b10: out<= c;
2'b11: out<= d;
endcase

endmodule
