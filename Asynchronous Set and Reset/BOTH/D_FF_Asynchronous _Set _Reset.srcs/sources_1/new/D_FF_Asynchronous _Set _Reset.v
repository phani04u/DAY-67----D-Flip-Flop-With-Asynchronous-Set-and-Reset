`timescale 1ns / 1ps
module D_FF_Asynchronous_Set_Reset(
    input CLK,
    input RESET,
    input SET,
    input D,
    output reg Q
    );
    always @ (posedge CLK or posedge RESET or posedge SET) begin 
       if (RESET) 
          Q <= 1'b0;          
       else if (SET) 
           Q <= 1'b1;          
        else 
           Q <= D;  
       end        
endmodule
