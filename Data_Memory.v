`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:27 07/23/2020 
// Design Name: 
// Module Name:    Data_Memory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Data_Memory( input clk , input [ 6 : 0 ] Address , input [ 31 : 0 ] Write_data , input MemWrite , input MemRead , output reg [ 31 : 0 ] Read_data );
	reg [ 31 : 0 ] Memory [ 0 : 127 ] ;
	initial
	begin
		Memory [ 13 ] <= 3 ;
	end
	always @ ( posedge clk )
	begin
		if ( MemWrite )
		begin
			Memory [ Address ] <= Write_data ;
		end
		if ( MemRead )
		begin
			Read_data <= Memory [ Address ] ;
		end
	end
endmodule
