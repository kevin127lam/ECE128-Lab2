`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 01:57:57 PM
// Design Name: 
// Module Name: lab2_tb
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


module lab2_tb();
    
    reg At, Bt, Ct; //input
	wire Coutt, st; //output

	// you can use the same name, but in this case we made them different 	// to highlight the 2 (.UUT(TB))
	FAdder uut(.A(At), .B(Bt), .Cin(Ct), .Cout(Coutt), .s(st)); //portmap

	initial 
	begin
		At=0; Bt=0; Ct=0;
		#10;
		At=0; Bt=0; Ct=1;
		#10;
		At=0; Bt=1; Ct=0;
		#10;
		At=0; Bt=1; Ct=1;
		#10;
		At=1; Bt=0; Ct=0;
		#10;
		At=1; Bt=0; Ct=1;
		#10;
		At=1; Bt=1; Ct=0;
		#10;
		At=1; Bt=1; Ct=1;
		#10;
	end
		
endmodule
