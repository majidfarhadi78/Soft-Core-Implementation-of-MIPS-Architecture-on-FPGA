`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:51:24 07/23/2020 
// Design Name: 
// Module Name:    MUX5 
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
module MUX5( input [ 4 : 0 ] data0, input [ 4 : 0 ] data1 , input select , output [ 4 : 0 ] data );
	assign data = !select ? data0 : data1 ;
endmodule