module test_alu;

// Inputs
reg [7:0] A;
reg [7:0] B;
reg [2:0] Op;
reg clk;

// Outputs
wire [7:0] R;

// Instantiating the design under test
ALU dut (.A(A),.B(B),.Op(Op),.R(R),.clk(clk));

// Clock generation with 100MHz frequency
initial clk= 0;
always #100 clk= ~clk;

initial begin
// Apply inputs
$dumpfile("dump.vcd");
$dumpvars(0,test_alu);
A = 8'b01101010;
B = 8'b00111011;

Op= 5; #100;
Op= 6; #100;
Op= 7; #100;
Op= 0; #100;
Op= 4; #100;
Op= 5; #100;
Op= 6; #100;
Op= 7; #100;
Op= 0; #100;
Op= 1; #100;
Op= 2; #100;
Op= 3; #100;
Op= 4; #100;
Op= 1; #100;
Op= 2; #100;
Op= 3; #100;

$finish;
end

sequence seq1;
	@(posedge clk)
	(Op == 3'b000);
endsequence

sequence seq2;
	@(posedge clk)
	(R == (A+B));
endsequence

sequence seq3;
	@(posedge clk)
	(Op == 3'b001);
endsequence

sequence seq4;
	@(posedge clk)
	(R == (A-B));
endsequence

sequence seq5;
	@(posedge clk)
	(Op == 3'b111);
endsequence

sequence seq6;
	@(posedge clk)
	(R == (A^B));
endsequence

sequence seq7;
	@(posedge clk)
	(Op == 3'b010);
endsequence

sequence seq8;
	@(posedge clk)
	(R == (~A));
endsequence

sequence seq9;
	@(posedge clk)
	(Op == 3'b110);
endsequence

sequence seq10;
	@(posedge clk)
	(R == (A|B));
endsequence

sequence seq11;			//Bug insertion
	@(posedge clk)
	(Op == 3'b000);
endsequence

sequence seq12;			//Bug insertion
	@(posedge clk)
	(R==(~A));
endsequence

	ADD : assert property(seq1 |=>seq2) $display("Assertion ADD Passed");
		else $display("Assertion NOT Passed);
	SUB : assert property(seq3 |=>seq4) $display("Assertion SUB Passed");
		else $display("Assertion NOT Passed);
	XOR : assert property(seq5 |=>seq6) $display("Assertion XOR Passed");
		else $display("Assertion NOT Passed);
	NOT : assert property(seq7 |=>seq8) $display("Assertion NOT Passed");
		else $display("Assertion NOT Passed);
	OR : assert property(seq9 |=>seq10) $display("Assertion OR Passed");
		else $display("Assertion NOT Passed);

ADD_BUG_DETECTION: assert property(seq11 |=>seq12)
		else $display("BUG Detected !");

endmodule
