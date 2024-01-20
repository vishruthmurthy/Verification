// Interface.sv

interface adder_if();
   logic [3:0]a;
   logic [3:0]b;
   logic [4:0]sum;

   modport master (output a, output b);
   modport slave (input a, input b, input s);

endinterface



