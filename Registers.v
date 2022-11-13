`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:15:24 07/23/2020 
// Design Name: 
// Module Name:    Registers 
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
module Registers( input clk , input [ 4 : 0 ] Read_Register_1 , input [ 4 : 0 ] Read_Register_2 , input [ 4 : 0 ] Write_Register , input [ 31 : 0 ] Write_Data , input Reg_Write , output reg [ 31 : 0 ] Read_Data_1 , output reg [ 31 : 0 ] Read_Data_2 );
	reg [ 31 : 0 ] Register_Bank [ 0 : 31 ] ;
	initial
	begin
		Register_Bank [ 0 ] <= 0 ;
	end
	always @ ( posedge clk )
	begin
		Read_Data_1 <= Register_Bank [ Read_Register_1 ] ;
		Read_Data_2 <= Register_Bank [ Read_Register_2 ] ;
		if ( Reg_Write )
		begin
			Register_Bank [ Write_Register ] <= Write_Data ;
		end
	end
endmodule
