// environment

'include "adder_sv_tb_driver.sv"
'include "adder_sv_tb_monitor.sv"
'include "adder_sv_tb_generator.sv"
'include "adder_sv_tb_scoreboard.sv"

  module env();

   //logic clk;
   adder_if adder_intf();

   driver drv(adder_intf);
   monitor mon(adder_intf);
   generator gen(adder_intf);
   scoreboard sb(adder_intf);

   //always #5 clk=~clk;

   //initial clk= 0;

  endmodule
