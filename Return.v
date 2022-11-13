`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:24:06 07/25/2020 
// Design Name: 
// Module Name:    Return 
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
module Return ( input clk , input [ 31 : 0 ] data_in , output reg [ 31 : 0 ] data_out );
	always @ ( posedge clk )
	begin
		data_out <= data_in ;
	end
endmodule
