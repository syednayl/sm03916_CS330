module tb
(

);
    reg [5:0] a;
    reg [5:0] b;
    reg CarryIn;
    reg [3:0] ALUOp;
    wire [5:0] Result;
    wire CarryOut6;
    
    top t
    (
      .a(a),
      .b(b),
      .CarryIn(CarryIn),
      .ALUOp(ALUOp),
      .Result(Result),
      .CarryOut6(CarryOut6)
    );
	

	initial
	begin
    a = 6'b000110;
    b = 6'b001010;
    CarryIn = 1'b1;
    ALUOp = 4'b0000;
  end


endmodule