`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:39 07/23/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU( input clk , input [ 31 : 0 ] data0 , input [ 31 : 0 ] data1 , input [ 3 : 0 ] operation , output reg [ 31 : 0 ] result , output reg zero );
	always @ ( posedge clk )
	begin
		case ( operation )
			0: result <= data0 & data1 ;
			1: result <= data0 | data1 ;
			2: result <= data0 + data1 ;
			6: result <= data0 - data1 ;
			7: result <= data0 < data1 ? data0 : data1 ;
			12: result <= ~ ( data0 | data1 ) ;
		endcase
		zero <= data0 == data1 ;
	end
endmodule
