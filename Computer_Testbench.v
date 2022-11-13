`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:40:21 07/24/2020
// Design Name:   Computer
// Module Name:   C:/Xilinx/MIPS/Computer_Testbench.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Computer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Computer_Testbench;

	// Inputs
	reg clk;
	wire [ 31 : 0 ] Read_Data_Registers_1 ;
	wire [ 31 : 0 ] Read_Data_Registers_2 ;
	wire [ 31 : 0 ] ALU_Result  ;
	wire [ 31 : 0 ] MUX_Data_Memory ;
	wire [ 31 : 0 ] Read_Data_Memory ;
	wire [ 31 : 0 ] MUX_Add ;
	wire [ 31 : 0 ] Program_Counter ;
	// Instantiate the Unit Under Test (UUT)
	Computer uut (
		.clk(clk),
		.Read_Data_Registers_1(Read_Data_Registers_1),
		.Read_Data_Registers_2(Read_Data_Registers_2),
		.ALU_Result(ALU_Result),
		.MUX_Data_Memory(MUX_Data_Memory),
		.Read_Data_Memory(Read_Data_Memory),
		.MUX_Add(MUX_Add),
		.Program_Counter(Program_Counter)
	);

	initial begin
		// Initialize Inputs
		clk <= 0;
		//$monitor ( "%t , %d , %d , %d , %d , %d , %d , %d" , $time , Read_Data_Registers_1 , Read_Data_Registers_2 , ALU_Result , MUX_Data_Memory , Read_Data_Memory , MUX_Add , Program_Counter ) ;
		// Wait 100 ns for global reset to finish
		// Add stimulus here

	end
   initial
	begin
		forever
		begin
			#1
			clk <= ~ clk ;
		end
	end
endmodule

