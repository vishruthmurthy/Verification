// generator

module generator (adder_if.master gen_if);
  task run;
    #10 gen_if.a = 4'b0110; gen_if.b= 4'b0010;
    #10 gen_if.a = 4'b1001; gen_if.b= 4'b0001;
  endtask

  initial run;
endmodule
