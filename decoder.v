`timescale 1ns/1ps

module decoder(
	input [2:0] a,
	output y1, y2, y3, y4, y5, y6, y7, y8
);

assign y8 = a[0] * a[1] * a[2];
assign y7 = ~a[0] * a[1] * a[2];
assign y6 = a[0] * ~a[1] * a[2];
assign y5 = ~a[0] * ~a[1] * a[2];
assign y4 = a[0] * a[1] * ~a[2];
assign y3 = ~a[0] * a[1] * ~a[2];
assign y2 = a[0] * ~a[1] * ~a[2];
assign y1 = ~a[0] * ~a[1] * ~a[2];

endmodule