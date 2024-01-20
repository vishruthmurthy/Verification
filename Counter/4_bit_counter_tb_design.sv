// design

module adder (
              input logic clk,
              input logic rst,
              output logic [3:0] count
             );

assign count = count+1;

endmodule

