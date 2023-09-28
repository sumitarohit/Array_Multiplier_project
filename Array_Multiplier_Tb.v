`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIELIT NEW DELHI
// Engineer: ROHIT KUMAR
// 
// Create Date: 20.08.2023 22:52:56
// Design Name: Array_Multiplier_4*4_TESTBENCH
// Module Name: Array_Multiplier_Tb
// Project Name: 4*4_Array_Multiplier
 
//////////////////////////////////////////////////////////////////////////////////


module Array_Multiplier_Tb( );

reg [3:0]A,B;
wire [7:0]P;

Array_Multiplier fourbit_mul (.A(A),.B(B),.P(P));

initial 
begin

A=4'b1000;  B=4'b1111;
#100
A=4'b1001;  B=4'b1001;
#100
A=4'b1010;  B=4'b1011;

end
endmodule

