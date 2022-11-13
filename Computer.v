`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:50:00 07/23/2020 
// Design Name: 
// Module Name:    Computer 
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
module Computer( input clk  , output [ 31 : 0 ] Read_Data_Registers_1 , output [ 31 : 0 ] Read_Data_Registers_2 , output [ 31 : 0 ] ALU_Result  , output [ 31 : 0 ] MUX_Data_Memory , output [ 31 : 0 ] Read_Data_Memory , output [ 31 : 0 ] MUX_Add , output [ 31 : 0 ] Program_Counter );
	wire [ 31 : 0 ] Instruction ;
	wire RegDst ;
	wire Branch ;
	wire MemRead ;
	wire MemtoReg ;
	wire [ 1 : 0 ] ALUop ;
	wire MemWrite ;
	wire ALUsrc ;
	wire RegWrite ;
	wire jump ;
	wire jal ;
	wire jr ;
	wire [ 4 : 0 ] MUX_Instruction ;
	wire [ 31 : 0 ] Extend ;
	wire [ 3 : 0 ] op ;
	wire [ 31 : 0 ] MUX_Registers ;
	wire Zero ;
	wire [ 31 : 0 ] Sum ;
	wire [ 31 : 0 ] Counter ;
	wire BZ ;
	wire [ 31 : 0 ] MUX_jump ;
	wire [ 31 : 0 ] Return_Address ;
	wire [ 31 : 0 ] Next_Address ;
	assign MUX_jump [ 31 : 26 ] = 6'b000000 ;
	PC pc ( clk , Next_Address , Program_Counter ) ;
	Incrementer I ( Program_Counter , Counter ) ;
	Instruction_Memory IM ( Program_Counter [ 4 : 0 ] , Instruction ) ;
	Control C ( Instruction [ 31 : 26 ] , RegDst , Branch , MemRead , MemtoReg , ALUop , MemWrite , ALUsrc , RegWrite , jump , jal , jr ) ;
	MUX5 M5 ( Instruction [ 20 : 16 ] , Instruction [ 15 : 11 ] , RegDst , MUX_Instruction ) ;
	Registers R ( clk , Instruction [ 25 : 21 ] , Instruction [ 20 : 16 ] , MUX_Instruction , MUX_Data_Memory , RegWrite , Read_Data_Registers_1 , Read_Data_Registers_2 ) ;
	Sign_Extend SE ( clk , Instruction [ 15 : 0 ] , Extend ) ;
	MUX MR ( Read_Data_Registers_2 , Extend , ALUsrc , MUX_Registers ) ;
	ALU_control Ac ( ALUop , Instruction [ 5 : 0 ] , op ) ;
	ALU alu ( clk , Read_Data_Registers_1 , MUX_Registers , op , ALU_Result , Zero ) ;
	Data_Memory DM ( clk , ALU_Result [ 6 : 0 ] , Read_Data_2 , MemWrite , MemRead , Read_Data_Memory ) ;
	MUX MDM ( ALU_Result , Read_Data_Memory , MemtoReg , MUX_Data_Memory ) ;
	Add AAE ( Counter , Extend , Sum ) ;
	and a ( BZ , Branch , Zero ) ;
	MUX MA ( Counter , Sum , BZ , MUX_Add ) ;
	MUX26 Mj ( MUX_Add [ 25 : 0 ] , Instruction [ 25 : 0 ] , jump , MUX_jump [ 25 : 0 ] ) ;
	Return Rjal ( jal , MUX_Add , Return_Address ) ;
	MUX MReturn ( MUX_jump , Return_Address , jr , Next_Address ) ;
endmodule
