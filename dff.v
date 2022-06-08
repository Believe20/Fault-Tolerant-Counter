`timescale 1ns/1ps

module dff (
	input clock, reset, preset, d,
	output reg q
);

always @(posedge clock, posedge reset, posedge preset)
begin
	if (reset)
		q <= 0;
	else if (preset)
		q <= 1;
	else
		q <= d;
	
end
endmodule