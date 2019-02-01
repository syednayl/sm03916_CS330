module multiplexer
(
input sel,[63:0] a ,[63:0] b,
output reg [63:0] out
);
  
  always @(sel or a or b)
    begin
      if (sel)
        out <= a;
    else
        out <= b;
    end

endmodule
  
     