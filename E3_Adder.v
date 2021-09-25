module E3_Adder(
	input [11:0] in_1, in_2,
	output [15:0] out_1);

wire [15:0] aux;
wire [12:0] c;
assign c[0] = 1'b0;


//[3:0] ------------------------------------------

generate
	genvar i;
	for (i=0; i<4; i=i+1)
	begin:vect
		fac instantiere1(
		.A(in_1[i]),
		.B(in_2[i]),
		.Cin(c[i]),
		.S(aux[i]),
		.Cout(c[i+1]));
	end
endgenerate

//c[4], c[8], c[12]


//[7:4]----------------------------------------
generate
	genvar j;
	for(j=4; j<8; j=j+1)
	begin:vec
		fac instantiere2(
		.A(in_1[j]),
		.B(in_2[j]),
		.Cin(c[j]),
		.S(aux[j]),
		.Cout(c[j+1]));
	end
endgenerate


//[11:8]----------------------------------------
generate
	genvar h;
	for(h=8; h<12; h=h+1)
	begin:ve
		fac instantiere3(
		.A(in_1[h]),
		.B(in_2[h]),
		.Cin(c[h]),
		.S(aux[h]),
		.Cout(c[h+1]));
	end
endgenerate


correction correct1(
	.Cin(c[4]),
	.S(aux[3:0]),
	.F(out_1[3:0]));

correction correct2(
	.Cin(c[8]),
	.S(aux[7:4]),
	.F(out_1[7:4]));
	
correction correct3(
	.Cin(c[12]),
	.S(aux[11:8]),
	.F(out_1[11:8]));

assign out_1[15] = 1'b0;
assign out_1[14] = c[12];
assign out_1[13] = ~c[12];
assign out_1[12] = ~c[12];


endmodule