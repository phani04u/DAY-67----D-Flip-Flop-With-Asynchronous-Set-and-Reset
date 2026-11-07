`timescale 1ns / 1ps
module dff_asrny_rst_tb;
reg clk; reg D; reg rst; wire Q;
dff_asrny_rst uut(
.clk(clk),.D(D),.rst(rst),.Q(Q));
integer i;
always #5 clk = ~clk;
initial begin 
clk = 1'b0;
D = 1'b0;
rst = 1'b0;
// Test data input
for(i = 0; i < 2; i = i+1) begin 
     D = i;
     #10;
end
 // Test asynchronous reset
   rst = 1'b1;
   #10;

   rst = 1'b0;
   D = 1'b1;
   #10;
$finish;
end
endmodule
