interface d_ff_if(input logic clk, input logic rst);

//logic rst;
logic d;
logic q;

modport master (input d);
modport slave (output d, q, clk);
//modport slave (input d, input q);

endinterface

