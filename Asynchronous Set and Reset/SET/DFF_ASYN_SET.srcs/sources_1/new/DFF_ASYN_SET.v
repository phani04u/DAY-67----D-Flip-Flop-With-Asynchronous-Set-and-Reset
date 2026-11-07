`timescale 1ns / 1ps
module DFF_ASYN_SET(
    input clk,
    input SET,
    input D,
    output reg Q
    );
 always @ (posedge clk or posedge SET) begin 
    if (SET) begin 
        Q <= 1'b1;
       end
     else begin 
        Q <= D;
      end
    end    
endmodule
