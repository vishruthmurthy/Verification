module environment();
logic clk,rst;

initial begin
clk=0; rst=0;
end

always #5 clk=~clk;

d_ff_if d_ff_intf(.clk(clk),.rst(rst));

driver drv (d_ff_intf);
monitor mon (d_ff_intf);
scoreboard sb (d_ff_intf);

endmodule
