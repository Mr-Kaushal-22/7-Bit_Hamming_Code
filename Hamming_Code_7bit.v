`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2023 00:11:08
// Design Name: 
// Module Name: Hamming_Code_7bit
// Name - Kaushal Kumar Kumawat
// Roll No.- 21PHC1R15
//////////////////////////////////////////////////////////////////////////////////


module Hamming_Code_7bit(D,Error,O,EN);
input [7:1] D;
input EN;
output [7:1] O;
output Error;
wire [4:1] P;
wire [7:0] Y;
// Detecting error bit
xor X_1(P[1],D[1],D[3],D[5],D[7]);
xor X_2(P[2],D[2],D[3],D[6],D[7]);
xor X_3(P[4],D[4],D[5],D[6],D[7]);

// CORRECTION CIRCUIT
Decoder_3x8 DEC(Y,P,EN);
buf BO_1(Error,~Y[0]);
xor XO_1(O[1],Y[1],D[1]);
xor XO_2(O[2],Y[2],D[2]);
xor XO_3(O[3],Y[3],D[3]);
xor XO_4(O[4],Y[4],D[4]);
xor XO_5(O[5],Y[5],D[5]);
xor XO_6(O[6],Y[6],D[6]);
xor XO_7(O[7],Y[7],D[7]);

endmodule


module Decoder_3x8(Y,I,EN);
input [3:0] I;
input EN;
output [7:0] Y;

and a_0(Y[0],~I[3],~I[1],~I[0],EN);
and a_1(Y[1],~I[3],~I[1],I[0],EN);
and a_2(Y[2],~I[3],I[1],~I[0],EN);
and a_3(Y[3],~I[3],I[1],I[0],EN);
and a_4(Y[4],I[3],~I[1],~I[0],EN);
and a_5(Y[5],I[3],~I[1],I[0],EN);
and a_6(Y[6],I[3],I[1],~I[0],EN);
and a_7(Y[7],I[3],I[1],I[0],EN);

endmodule
