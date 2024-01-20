module top();
environment e();

and_2 dut (.a(e.and_2_intf.a), .b(e.and_2_intf.b), .out(e.and_2_intf.out));

endmodule
