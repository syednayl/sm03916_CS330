module tb  
(
);
  reg [63:0]WriteData;
  reg [4:0] RS1,RS2,Rd;
  reg clk,reset,RegWrite;
  reg [63:0] ReadData1,ReadData2;
  
  registerFile rf
  (
    .WriteData(WriteData),
    .RS1(RS1),
    .RS2(RS2),
    .RD(RD),
    .clk(clk),
    .reset(reset),
    .RegWrite(RegWrite),
    .ReadData1(ReadData1),
    .ReadData2(ReadData2)
  );

  initial 
    begin
      clk = 1'b0;
      reset = 1'b0;
      RS1 = 5'b00001;
      RS2 = 5'b00010;
      RD = 5'b000011;
      RegWrite = 1'b0;
      WriteData = 64'h0000000000000004;
      #10 clk = ~clk;
      RegWrite = ~RegWrite;
      RS1 = WriteData;
      #10 
      reset = ~reset;
    end
     
