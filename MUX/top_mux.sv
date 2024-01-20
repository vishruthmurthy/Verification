//`include "environment.sv"

module top();
environment e();

mul_4_1 DUT (.a(e.mul_4_1_intf.a),.b(e.mul_4_1_intf.b),.c(e.mul_4_1_intf.c),.d(e.mul_4_1_intf.d),.s1(e.mul_4_1_intf.s1),.s2(e.mul_4_1_intf.s2),.out(e.mul_4_1_intf.out));

endmodule
