/*`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
*/

module environment();

mul_4_1_if mul_4_1_intf();

driver drv (mul_4_1_intf);
monitor mon (mul_4_1_intf);
scoreboard sb (mul_4_1_intf);

endmodule
