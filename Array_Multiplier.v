`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIELIT NEW DELHI
// Engineer: ROHIT KUMAR
// 
// Create Date: 20.08.2023 22:52:33
// Design Name: Array_Multiplier_4*4
// Module Name: Array_Multiplier
// Project Name: 4*4_Array_Multiplier

//////////////////////////////////////////////////////////////////////////////////


module Array_Multiplier(A,B,P );

input [3:0]A,B; // Four Bit Input 
output [7:0]P;  // Result Of Multiplication=P

wire [3:0]M0;
wire [4:0]M1;
wire [5:0]M2;
wire [6:0]M3;
// Middle Terms 

wire [7:0]S1,S2,S3;

assign M0={4{A[0]}} & B [3:0];
assign M1={4{A[1]}} & B [3:0];
assign M2={4{A[2]}} & B [3:0];
assign M3={4{A[3]}} & B [3:0];
// Partial Multiplication


assign S1= M0 + (M1<<1);
assign S2= S1 + (M2<<2);
assign S3= S2 + (M3<<3);
//Addition of partial multiplication 
assign P= S3;
  // Final product of multilication

endmodule


