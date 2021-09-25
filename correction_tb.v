module correction_tb;
	reg Cin_tb;
	reg [3:0] S_tb;
	wire [3:0] F_tb;

correction testbench (
	.Cin(Cin_tb),
	.S(S_tb),
	.F(F_tb));


initial begin

Cin_tb = 1;
S_tb = 4'b0101;

end

initial begin

$monitor ("Pentru Cin = %b si S = %b, obtinem F = %b", Cin_tb, S_tb, F_tb);


end

endmodule