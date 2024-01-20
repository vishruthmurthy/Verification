module driver (adder_if.drv_if drv_if);

task run();

#10 drv_if.a= 4'b0000; drv_if.b= 4'b0111;
#10 drv_if.a= 4'b0010; drv_if.b= 4'b0011;

endtask

initial run;

endmodule
