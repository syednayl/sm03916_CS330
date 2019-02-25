module ALU_1_Bit
  (
    input a,
    input b,
    input CarryIn,
    input [3:0] ALUOp,
    output reg Result,
    output reg CarryOut
  );
  
    wire MUX1;
    wire MUX2;
    
    assign MUX1 = ALUOp[3]? ~a : a;
    assign MUX2 = ALUOp[2]? ~b : b;
    
    always @(*)
    begin
      CarryOut = (MUX1 & CarryIn) | (MUX2 & CarryIn) | (MUX1 & MUX2);
  
      if (ALUOp[1:0] == 2'b00)
        begin
          Result = MUX1 & MUX2;
        end
      else if (ALUOp[1:0] == 2'b01)
        begin
          Result = MUX1 | MUX2;
        end
      else if (ALUOp[1:0] == 2'b10)
        begin
          Result = (MUX1 & ~MUX2 & ~CarryIn) | (~MUX1 & MUX2 & ~CarryIn) | (~MUX1 & ~MUX2 & CarryIn) | (MUX1 & MUX2 & CarryIn);
        end
    end
endmodule