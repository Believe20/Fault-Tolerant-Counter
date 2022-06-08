`timescale 1ns/1ps

module mod8_counter(
	input q3, q5, q6, updown,
	output d3, d5, d6
);

wire f0, f1, m0, m1, inv, high, gnd;
assign high = 1'b1;

counter_slice g1(high, q3, f0, d3);
counter_slice g2(m0, q5, f1, d5);
counter_slice g3(m1, q5, gnd, d6);

mux g4(f0, ~f0, updown, m0);
mux g5(f1, ~inv, updown, m1);
mux g6(~f1, f1, q3, inv);

endmodule