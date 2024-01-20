interface and_2_if();

logic a;
logic b;
logic out;


modport master (output a, output b);
modport slave (input a, input b, input out);


endinterface
