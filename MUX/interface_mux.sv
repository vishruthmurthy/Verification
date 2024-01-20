interface mul_4_1_if();

logic a;
logic b;
logic c;
logic d;
logic s1;
logic s2;
logic out;

modport master (output a, output b, output c, output d, output s1, output s2); 
modport slave (input a, input b, input c, input d, input s1, input s2, input out); 

endinterface
