`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:05 07/23/2020 
// Design Name: 
// Module Name:    Instruction_Memory 
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
module Instruction_Memory( input [ 4 : 0 ] Instruction_Address , output [ 31 : 0 ] Instruction );
	reg [ 31 : 0 ] Memory [ 0 : 31 ] ;
	assign Instruction = Memory [ Instruction_Address ] ;
	initial
	begin
		/*Memory [ 0 ] <= 32'b001000_00000_00001_0000000000000011 ;
		Memory [ 1 ] <= 32'b001000_00000_00010_0000000000000011 ;
		Memory [ 2 ] <= 32'b000000_00001_00010_00011_00000_011000 ;
		Memory [ 3 ] <= 32'b100011_00010_00001_0000000000001010 ;
		Memory [ 4 ] <= 32'b000100_00001_00010_0000000000010100 ;
		Memory [ 25 ] <= 32'b00000100000000000000000000000111;
		Memory [ 7 ] <= 32'b00001000000000000000000000001111 ;
		Memory [ 8 ] <= 32'b001000_00000_00001_0000000000000011 ;
		Memory [ 9 ] <= 32'b001000_00000_00010_0000000000000011 ;
		Memory [ 10 ] <= 32'b000000_00001_00010_00011_00000_011000 ;
		Memory [ 11 ] <= 32'b100011_00010_00001_0000000000001010 ;
		Memory [ 15 ] <= 32'b001000_00000_00001_0000000000000011 ;
		Memory [ 16 ] <= 32'b001000_00000_00010_0000000000000011 ;
		Memory [ 17 ] <= 32'b000000_00001_00010_00011_00000_011000 ;
		Memory [ 18 ] <= 32'b100011_00010_00001_0000000000001010 ;
		Memory [ 19 ] <= 32'b00001100000000000000000000000000 ;*/
		$readmemb ( "instruction.mem" , Memory ) ;
	end
endmodule
