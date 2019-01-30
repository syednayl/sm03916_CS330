module ripple_carry_counter
(
	input clk, reset,
	output [3:0] q 
);

	//Instantiate T-FF modules
	
	T_FF tff0
	(
		.c(clk),
		.r(reset),
		.q(q[0])
	);

	T_FF tff1
	(
		.c(q[0]),
		.r(reset),
		.q(q[1])
	);

	T_FF tff2
	(
		.c(q[1]),
		.r(reset),
		.q(q[2])
	);

	T_FF tff3
	(
		.c(q[2]),
		.r(reset),
		.q(q[3])
	);
endmodule
