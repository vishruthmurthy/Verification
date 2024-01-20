// environment

  module env;

   logic clk;
   counter_4_bit_if counter_4_bit_intf(.clk(clk));

    driver drv(counter_4_bit_intf);
    monitor mon(counter_4_bit_intf);
    generator gen(counter_4_bit_intf);
    scoreboard sb(counter_4_bit_intf);

   always #5 clk=~clk;

   initial clk= 0;

  endmodule
