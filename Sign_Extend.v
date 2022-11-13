`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:42 07/23/2020 
// Design Name: 
// Module Name:    Sign_Extend 
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
module Sign_Extend( input clk , input [ 15 : 0 ] data_in , output reg [ 31 : 0 ] data_out );
	integer i ;
	always @ ( posedge clk )
	begin
		data_out [ 15 : 0 ] <= data_in ;
		for ( i = 16 ; i < 32 ; i = i + 1 )
		begin
			data_out [ i ] <= data_in [ 15 ] ;
		end
	end
endmodule
