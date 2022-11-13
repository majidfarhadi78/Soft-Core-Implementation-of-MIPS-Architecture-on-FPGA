`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:05 07/23/2020 
// Design Name: 
// Module Name:    Incrementer 
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
module Incrementer( input [ 31 : 0 ] data_in, output [ 31 : 0 ] counter);
	assign counter = data_in + 1 ;
endmodule
