module display_decoder(
    input  wire clk,
  
    output reg a,//1-bit variable register // a, b, c, d, e, f, g are the final outputs.
    output reg b,
    output reg c,
    output reg d,
    output reg e,
    output reg f,
    output reg g
);
reg A;
reg B;
reg C;
reg D;
reg W; 
reg X;
reg Y;
reg Z;

  reg [26:0] delay;//for delay of 1 second  

  initial begin
    W<=0;
    X<=0;
    Y<=0;
    Z<=0;
    end
  always @(posedge clk) begin
  
  a=(!D&!C&!B&A)|(!D&C&!B&!A);
  b=(!D&C&!B&A)|(!D&C&B&!A);
  c=(!D&!C&B&!A);
  d=(!D&!C&!B&A)|(!D&C&!B&!A)|(!D&C&B&A);
  e=(!D&!C&!B&A)|(!D&!C&B&A)|(!D&C&!B&!A)|(!D&C&!B&A)|(!D&C&B&A)|(D&!C&!B&A);
  f=(!D&!C&!B&A)|(!D&!C&B&!A)|(!D&!C&B&A)|(!D&C&B&A);
  g=(!D&!C&!B&!A)|(!D&!C&!B&A)|(!D&C&B&A);

  D<=(W&X&Y&!Z)|(!W&!X&!Y&Z);
  C<=(Y&!X)|(Y&!W)|(!Y&X&W);
  B<=(!W&X)|(!Z&!X&W);
  A<=!W;
  
  

  
     delay = delay+1;
      
 if( delay == 27'b101111101011110000100000000) 
begin
              
delay=27'b0;
  W<=A;
  X<=B;
  Y<=C;
  Z<=D;
               
 end
       
 end
endmodule
