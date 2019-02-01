module tb
(
);
  reg [63:0]a;
  reg [63:0]b;
  reg sel;
  wire [63:0] out;
  
  multiplexer mymux
  (
    .a(a),
    .b(b),
    .sel(sel),
    .out(out)
  );
  
  initial 
  begin
    sel = 1'b1;
    a = 64'b1;
    b = 64'b0;
  end
  
  initial
runb  #13 b = 64'hff; 
  
  
  always
  #10 sel = ~sel;
  

  initial
  $monitor("At selector = %d out = %d", sel,out);
  
endmodule
    