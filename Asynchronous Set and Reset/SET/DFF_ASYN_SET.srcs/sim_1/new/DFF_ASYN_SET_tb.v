`timescale 1ns / 1ps
module DFF_ASYN_SET_tb;
reg clk, D,SET;
wire Q;
DFF_ASYN_SET uut(
.clk(clk),.D(D),.SET(SET),.Q(Q));
integer i;
always #5 clk = ~clk;
initial begin 
clk = 1'b0;   D = 1'b0;  SET = 1'b0;
// testing the input 
for  (i = 0; i < 2; i = i + 1) begin 
    D = i;
    #10;
   end
 // Asynchronous Set
 SET = 1'b1;   #10;
 SET = 1'b0;   D = 1'b0; ;#10;
 $finish;
 end
 endmodule  
   
   