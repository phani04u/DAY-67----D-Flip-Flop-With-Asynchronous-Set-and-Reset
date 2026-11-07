`timescale 1ns / 1ps
module D_FF_Asynchronous_Set_Reset_tb;
reg CLK,SET,RESET,D;
wire Q;
D_FF_Asynchronous_Set_Reset uut(.CLK(CLK),.RESET(RESET),.SET(SET),.D(D),.Q(Q));
integer i;
always #5  CLK = ~CLK;
initial begin 
CLK = 1'b0; RESET = 1'b0; SET = 1'b0; D = 1'b0;
// teseting the input
for( i = 0; i < 2; i = i + 1) begin 
      D = i;      #10;
      end
  // teseting the Asynchronous_Set_Reset
  RESET = 1'b0;  SET = 1'b1;   #10;
   RESET = 1'b0;    SET = 1'b0;   D = 1'b0;   #10;
   $finish;
   end
   endmodule 

