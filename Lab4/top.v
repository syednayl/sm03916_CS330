module top
(
	input clk, reset, rx,
	output [3:0]q,
	output tx
);
wire [7:0]counter_data;
	ripple_carry_counter rcc
	(
		.clk(clk),
		.reset(reset),
		.q(counter_data[3:0])
		
	);
	
	uart_top ut
	(
		.clk(clk),
		.reset(reset),
		.data_to_tx(counter_data),
		.rx(rx),
		.tx(tx)
	);
	assign q = counter_data[3:0];
endmodule