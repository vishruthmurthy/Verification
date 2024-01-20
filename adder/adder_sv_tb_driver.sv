// Driver

module driver(adder_if.master drv_if);

   task run;
    #10 drv_if.a = 4'b1010; drv_if.b= 4'b0101;
    #10 drv_if.a = 4'b1100; drv_if.b= 4'b0011;
   endtask

   initial run;
endmodule
