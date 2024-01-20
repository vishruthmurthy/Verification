/*`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
*/ 
module environment();
adder_if adder_if();

driver drv (adder_if.drv_if);
monitor mon (adder_if.mon_if);
scoreboard sb (adder_if.mon_if);

endmodule 
