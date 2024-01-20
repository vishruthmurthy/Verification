module driver (d_ff_if.master drv_if);

task run;
#0; drv_if.d= 1; 
#10; drv_if.d= 0;
#10; drv_if.d= 1;
#10; drv_if.d= 0;
#10 $finish;
endtask

initial run;

endmodule
