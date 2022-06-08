`timescale 1ns/1ps

module top(
	input clock, updown,
	input [6:1] reset, preset,
	output [2:0] y, out
);

wire p1, p2, d3, p4, d5, d6, p11, p21, d31, p41, d51, d61, p111, p211, p411;
wire e0, e1, e2;
wire c3, c5, c6;
wire q3, q5, q6;
wire gnd;
wire [2:0] e, x;

assign e = {e2, e1, e0};
assign x = {d6, d5, d3};
assign y = {d61, d51, d31};
assign out = {q6, q5, q3};

dff g1(clock, reset[1], preset[1], p1, p11);
dff g2(clock, reset[2], preset[2], p2, p21);
dff g3(clock, reset[3], preset[3], d3, d31);
dff g4(clock, reset[4], preset[4], p4, p41);
dff g5(clock, reset[5], preset[5], d5, d51);
dff g6(clock, reset[6], preset[6], d6, d61);

parity g7(d3, d5, d6, p1, p2, p4);
parity g8(d31, d51, d61, p111, p211, p411);

error g9(e, gnd, gnd, gnd, c3, gnd, c5, c6, gnd);

decoder g10(e, gnd, gnd, gnd, c3, gnd, c5, c6, gnd);

xor g11(q3, d31, c3);
xor g12(q5, d51, c5);
xor g13(q6, d61, c6);

mod8_counter g0(q3, q5, q6, updown, d3, d5, d6);

endmodule