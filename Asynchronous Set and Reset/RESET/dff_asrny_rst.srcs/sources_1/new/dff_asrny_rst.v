`timescale 1ns / 1ps
module dff_asrny_rst(
input clk,
input rst,
input D,
output reg  Q
);
always  @ (posedge clk or posedge rst) begin 
if (rst) begin 
    Q <= 1'b0;
end
else if(D == 1'b0) begin  
   Q <= 1'b0;
end
else if(D == 1'b1) begin  
   Q <= 1'b1;
end
else begin 
//
end
end
endmodule   
