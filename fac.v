module fac(
	input  A,B,Cin,
	output reg  S, Cout);

	always@(A,B,Cin)
	begin
	S = A^B^Cin;
	Cout = A & B | B & Cin | A & Cin;
	end

endmodule