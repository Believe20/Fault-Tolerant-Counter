`timescale 1ns/1ps

module parity(
	input a, b, c,
	output d, e, f
);

xor g1(d, a, b);
xor g2(e, a, c);
xor g3(f, b, c);

endmodule