// top module 

  module top;

    env e();
    counter_4_bit dut(.clk(e.counter_4_bit_intf.clk),.rst(e.counter_4_bit_intf.rst),.count(e.counter_4_bit_intf.count));

  endmodule
