module HalfAdder(Sum, Carry, A, B);
	output Sum, Carry;
	input A, B;
	xor xr(Sum, A, B);
	and an(Carry, A, B);
endmodule