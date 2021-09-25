module fac_tb;

	reg A_tb,B_tb,Cin_tb;
	wire S_tb,Cout_tb;

fac testbench(
	.A(A_tb),
	.B(B_tb),
	.Cin(Cin_tb),
	.S(S_tb),
	.Cout(Cout_tb));

initial begin

A_tb = 1;
B_tb = 1;
Cin_tb = 1;

end

initial begin

$monitor ("Input %b + %b + %b; Output %b %b", A_tb, B_tb, Cin_tb, S_tb, Cout_tb);

end

endmodule

