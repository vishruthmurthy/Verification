// generator

module generator (counter_4_bit_if.master gen_if);

  task run;

    #10 drv_if.rst = 1; 
    #20 drv_if.rst= 0;
    #10 drv_if.rst = 1; 
    #20 drv_if.rst= 0;

  endtask

  initial run;

endmodule
