module ALU(A,B,Op,R,clk);

input clk;
input [7:0] A,B;
input [2:0] Op;
output [7:0] R;
wire [7:0] reg1, reg2;
reg [7:0] reg3;

	assign reg1= A;
	assign reg2= B;
	assign R= reg3;

always@(posedge clk)
begin
	
	case(Op)
		0: reg3= reg1 + reg2; // addition
		0: reg3= reg1 - reg2; // subtraction
		0: reg3= ~reg1; // negation
		0: reg3= ~(reg1 & reg2); // NAND
		0: reg3= ~(reg1 | reg2); // NOR
		0: reg3= reg1 & reg2; // AND
		0: reg3= reg1 | reg2; // OR
		0: reg3= reg1 ^ reg2; // XOR
	endcase

end

endmodule
