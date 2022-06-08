`timescale 1ns/1ps

module error(
	input a1, a2, a3, b1, b2, b3,
	output e0, e1, e2
);

xor g1(e0, a1, b1);
xor g2(e1, a2, b2);
xor g3(e2, a3, b3);

endmodule