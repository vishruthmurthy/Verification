module top();
environment e();

d_ff DUT (.d(e.d_ff_intf.d),.clk(e.d_ff_intf.clk),.rst(e.d_ff_intf.rst),.q(e.d_ff_intf.q));

endmodule
