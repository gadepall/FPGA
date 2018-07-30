`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2017 12:55:05
// Design Name: 
// Module Name: counting_decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decade_counter(input wire clk,output reg A,output reg B,output reg C,output reg D);
reg W;
reg X;
reg Y;
reg Z;
reg [26:0] delay;//counter variable for producing delay of 1 second

always @(posedge clk) begin //continuous loop //at the positive edge of clock
    delay = delay+1;
    D<=(W&X&Y&!Z)|(!W&!X&!Y&Z);
    C<=(W&X&!Y&!Z)|(!W&!X&Y&!Z)|(W&!X&Y&!Z)|(!W&X&Y&!Z);
    B<=(W&!X&!Y&!Z)|(!W&X&!Y&!Z)|(W&!X&Y&!Z)|(!W&X&Y&!Z);
    A<=(!W&!X&!Y&!Z)|(!W&X&!Y&!Z)|(!W&!X&Y&!Z)|(!W&X&Y&!Z)|(!W&!X&!Y&Z);
    if(delay == 27'b101111101011110000100000000) begin //counting till 1 second,after 1 sec following is executed
    delay <=27'b0; //resetting the counter
    W<=A;
    X<=B;
    Y<=C;
    Z<=D;
    end
end
initial begin //initial setup
W<=0;
X<=0;
Y<=0;
Z<=0;    
end
endmodule
