module tb
(
	
);
  reg clk;
  reg reset;
	wire [31:0] Instructioner;
    
	Instruction_Fetch Inst
    (
    .clk(clk),
    .reset(reset),
    .Instructioner(Instructioner)
    );
	
  initial
    
	begin
    
	    clk = 1'b0;
      reset = 1'b1;
      #10 reset = 1'b0;
    end
    
  always
      
	  #5 clk = ~clk;
      
endmodule

	