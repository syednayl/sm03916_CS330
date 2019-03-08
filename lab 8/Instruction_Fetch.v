module Instruction_Fetch
(
	
	input clk,
	input reset,
	output wire [31:0] Instructioner
	
);

	wire [63:0] PC_Out ;
	wire [63:0] AdderOut;
	
	Program_Counter PCounter
	(
		.clk(clk),
		.reset(reset),
		.PC_In(AdderOut),
		.PC_Out(PC_Out)
	);
	
	Adder Add
	(
		.a(PC_Out),
		.b(64'd4),
		.out(AdderOut)
	);
	
	InstructionMemory InstMem 
	(
		
		
		.InstAddress(PC_Out),
		
		.Instruction(Instructioner)
	);
	
endmodule
	
