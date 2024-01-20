// top module of adder
  module top;
    env e;
    adder dut (.a(e.adder_intf.a), .b(e.adder_intf.b), .sum(e.adder_intf.sum));
  endmodule

// environment

  module env;
   logic clk;
   adder_if adder_intf((.clk(clk));

   driver drv(adder_intf);
   monitor mon(adder_intf);
   generator gen(adder_intf);
   scoreboard sb(adder_intf);

   always #5 clk- ~clk;

   initial clk= 0;

  endmodule

// scoreboard

module scoreboard(adder_if.slave sb_if);
  always @(posedge sb_if.sum begin
    if (sb_if.sum != (sb_if.a + sb_if.b)) $fatal ("Mismatch: Sum=%b, Expected=%b", sb_if.sum, sb_if.a + sb_if.b);
  end

endmodule

// generator

module generator (adder_if.master gen_if);
  task run;
    #10 gen_if.a = 4'b0110; gen_if.b= 4'b0010;
    #10 gen_if.a = 4'b1001; gen_if.b= 4'b0001;
  endtask

  initial run;
endmodule

// monitor

module monitor (adder_if.slave mon_if);
   always @(posedge mon_if.sum) begin
     $display ("A=%b, B =%b, Sum= %b" mon_if.a, mon_if.b, mon_if.sum);
   end
endmodule

// Driver

module driver(adder_if.master drv_if);
   task run;
    #10 drv_if.a = 4'b1010; drv_if.b= 4'b0101;
    #10 drv_if.a = 4'b1100; drv_if.b= 4'b0011;
   endtask

   initial run;
endmodule

// Interface.sv
interface adder_if(input logic clk);
   logic [3:0]a;
   logic [3:0]b;
   logic [3:0]sum;

   modport master (input a, b, output sum);
   modport slave (output a, b, input sum);

endinterface

// design

module adder (
              input logic [3:0] a,
              input logic [3:0] b,
              output logic [4:0] sum
             );

assign sum = a+b;

endmodule


