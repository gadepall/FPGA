module display_decoder(
    input wire clk,
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    output reg a,
     output reg b,
      output reg c,
       output reg d,
        output reg e,
         output reg f,
          output reg g,
          );
         
          always @(posedge clk) begin
         
          a=(!D&!C&!B&A) | (!D&C&!B&!A);
          b=(!D&C&!B&A) | (!D&C&!B&!A);
          c=(!D&C&!B&!A);
          d=(!D&C&!B&!A)|(!D&C&!B&!A)|(!D&C&!B&!A);
          e=(!D&C&!B&!A)|(!D&C&!B&!A)|(!D&C&!B&!A)|(!D&C&!B&!A)|(!D&C&!B&!A)|(!D&C&!B&!A);
          f=(!D&C&!B&!A)|(!D&C&!B&!A)|(!D&C&!B&!A)|(!D&C&!B&!A);
          g=(!D&C&!B&!A)|(!D&C&!B&!A)|(!D&C&!B&!A);
         
          end
          endmodule
