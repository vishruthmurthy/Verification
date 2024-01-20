interface adder_if();

logic [3:0] a;
logic [3:0] b;
logic [4:0] s;

modport drv_if (output a,output b);
modport mon_if (input a,input b,input s);

endinterface
