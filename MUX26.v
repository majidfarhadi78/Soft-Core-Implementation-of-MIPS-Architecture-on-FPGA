`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:32:37 07/25/2020 
// Design Name: 
// Module Name:    MUX26 
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
module MUX26( input [ 25 : 0 ] data0, input [ 25 : 0 ] data1 , input select , output [ 25 : 0 ] data );
	assign data = !select ? data0 : data1 ;
endmodule