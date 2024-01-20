module driver(and_2_if.master drv_if);

task run();
#10; drv_if.a= 1; drv_if.b= 0;
#10; drv_if.a= 1; drv_if.b= 1;
endtask

initial run();

endmodule
