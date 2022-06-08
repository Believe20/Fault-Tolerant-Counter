`timescale 1ns/1ps

module mux(
	input x1, x2, s,
	output reg y
);

always @(*)
begin
	if (s)
		y <= x1;
	else
		y <= x2;
end
endmodule