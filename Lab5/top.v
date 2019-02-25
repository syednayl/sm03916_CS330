module top
(
    input [5:0] a,
    input [5:0] b,
    input CarryIn,
    input [3:0] ALUOp,
    output [5:0] Result,
    output CO6
);
    wire CO1;
    wire CO2;
    wire CO3;
    wire CO4;
    wire CO5;
    
	ALU_1_Bit ALU1
	(
		.a(a[0]),
		.b(b[0]),
    .CarryIn(CarryIn),
    .ALUOp(ALUOp),
    .Result(Result[0]),
    .CarryOut(CO1)
	);
	
	ALU_1_Bit ALU2
	(
		.a(a[1]),
		.b(b[1]),
    .CarryIn(CO1),
    .ALUOp(ALUOp),
    .Result(Result[1]),
    .CarryOut(CO2)
	);
	
	ALU_1_Bit ALU3
	(
		.a(a[2]),
		.b(b[2]),
    .CarryIn(CO2),
    .ALUOp(ALUOp),
    .Result(Result[2]),
    .CarryOut(CO3)
	);
	
	ALU_1_Bit ALU4
	(
		.a(a[3]),
		.b(b[3]),
    .CarryIn(CO3),
    .ALUOp(ALUOp),
    .Result(Result[3]),
    .CarryOut(CO4)
	);
	
	ALU_1_Bit ALU5
	(
		.a(a[4]),
		.b(b[4]),
    .CarryIn(CO4),
    .ALUOp(ALUOp),
    .Result(Result[4]),
    .CarryOut(CO5)
	);
	
	ALU_1_Bit ALU6
	(
		.a(a[5]),
		.b(b[5]),
    .CarryIn(CO5),
    .ALUOp(ALUOp),
    .Result(Result[5]),
    .CarryOut(CO6)
	);


endmodule