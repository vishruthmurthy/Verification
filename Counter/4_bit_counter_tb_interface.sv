// Interface

interface counter_4_bit_if(input logic clk);
   logic clk;
   logic rst;
   logic [3:0]count;

   modport master (input rst, output count);
   modport slave (output count, input rst);

endinterface



