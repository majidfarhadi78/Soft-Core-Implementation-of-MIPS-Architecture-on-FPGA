`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:05 07/23/2020 
// Design Name: 
// Module Name:    PC 
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
module PC( input clk , input [ 31 : 0 ] data_in , output reg [ 31 : 0 ] data_out );
	reg [ 1 : 0 ] counter ;
	initial
	begin
		data_out <= 0 ;
		counter <= 0 ;
		$monitor ( "%t , %d" , $time , data_out ) ;
	end
	always @ ( posedge clk )
	begin
		if ( counter == 3 )
		begin
			data_out <= data_in ;
			counter <= 0 ;
		end
		else
		begin
			counter <= counter + 1 ;
		end
	end
endmodule
