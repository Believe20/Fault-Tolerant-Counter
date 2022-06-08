`timescale 1ns/1ps

module counter_slice(
	input i, q,
	output o, d
);

and g1(o, i, q);
xor g2(d, i, q);

endmodule