module driver (mul_4_1_if.master drv_if);

task run();
#10; drv_if.a= 1; drv_if.b= 0; drv_if.c= 0; drv_if.d= 1; drv_if.s1= 1; drv_if.s2= 1; 
#10; drv_if.a= 0; drv_if.b= 0; drv_if.c= 1; drv_if.d= 1; drv_if.s1= 0; drv_if.s2= 1;
#10; drv_if.a= 1; drv_if.b= 1; drv_if.c= 0; drv_if.d= 1; drv_if.s1= 1; drv_if.s2= 0;
#10; drv_if.a= 1; drv_if.b= 0; drv_if.c= 1; drv_if.d= 1; drv_if.s1= 0; drv_if.s2= 0;
endtask

initial run;

endmodule
