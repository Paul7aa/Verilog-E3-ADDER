module correction(
		input Cin,
		input [3:0] S,
		output [3:0] F);

reg [3:0] C;
wire [4:0] c0;

assign c0[0] = 0;

	always@(Cin,S)
	begin

	C[0] = 1;
	C[1] = Cin;
	C[2] = ~Cin;
	C[3] = ~Cin;

	end
	
generate
	genvar h;
	for(h=0;h<4;h=h+1)
	begin:correction
	
	fac correct(
	.A(C[h]),
	.B(S[h]),
	.Cin(c0[h]),
	.S(F[h]),
	.Cout(c0[h+1]));

	end
endgenerate


endmodule


