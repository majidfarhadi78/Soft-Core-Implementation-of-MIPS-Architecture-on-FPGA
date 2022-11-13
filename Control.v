`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:30:46 07/23/2020 
// Design Name: 
// Module Name:    Control 
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
module Control(
    input [5:0] inst_in,
    output reg RegDst,
	 output reg Branch,
    output reg MemRead,
    output reg MemtoReg,
    output reg [1:0] ALUop,
    output reg MemWrite,
    output reg ALUsrc,		
    output reg RegWrite,
	 output reg jump,
	 output reg jal,
	 output reg jr
    );
always @(*)
begin
   if(inst_in == 6'b000000)//R_type
	begin
	RegDst = 1;
	ALUsrc = 0;
	MemtoReg = 0;
	RegWrite = 1;
	MemRead = 0;
	MemWrite = 0;
	Branch = 0;
	ALUop[1] = 1;
	ALUop[0] = 0;
	jump = 0 ;
	jal = 0 ;
	jr = 0 ;
	end
	
	else if(inst_in == 6'b100011)//load
	begin
	RegDst = 0;
	ALUsrc = 1;
	MemtoReg = 1;
	RegWrite = 1;
	MemRead = 1;
	MemWrite = 0;
	Branch = 0;
	ALUop[1] = 0;
	ALUop[0] = 0;
	jump = 0 ;
	jal = 0 ;
	jr = 0 ;
	end
	
	else if(inst_in == 6'b001000)//addi
	begin
	RegDst = 0;
	ALUsrc = 1;
	MemtoReg = 0;
	RegWrite = 1;
	MemRead = 1;
	MemWrite = 0;
	Branch = 0;
	ALUop[1] = 0;
	ALUop[0] = 0;
	jump = 0 ;
	jal = 0 ;
	jr = 0 ;
	end
	else if(inst_in == 6'b001100)//andi
	begin
	RegDst = 0;
	ALUsrc = 1;
	MemtoReg = 0;
	RegWrite = 1;
	MemRead = 1;
	MemWrite = 0;
	Branch = 0;
	ALUop[1] = 1;
	ALUop[0] = 0;
	jump = 0 ;
	jal = 0 ;
	jr = 0 ;
	end
	else if(inst_in == 6'b001101)//ori
	begin
	RegDst = 0;
	ALUsrc = 1;
	MemtoReg = 0;
	RegWrite = 1;
	MemRead = 1;
	MemWrite = 0;
	Branch = 0;
	ALUop[1] = 1;
	ALUop[0] = 0;
	jump = 0 ;
	jal = 0 ;
	jr = 0 ;
	end

	else if(inst_in == 6'b000100)//branch
	begin
	ALUsrc = 0;
	RegWrite = 0;
	MemRead = 0;
	MemWrite = 0;
	Branch = 1;
	ALUop[1] = 0;
	ALUop[0] = 1;
	jump = 0 ;
	jal = 0 ;
	jr = 0 ;
	end
	else if (inst_in == 6'b000001)
	begin
	RegDst = 0;
	ALUsrc = 0;
	MemtoReg = 0;
	RegWrite = 0;
	MemRead = 0;
	MemWrite = 0;
	Branch = 0;
	ALUop[1] = 0;
	ALUop[0] = 0;
	jump = 1 ;
	jal = 0 ;
	jr = 0 ;
	end
	else if (inst_in == 6'b000010)
	begin
	RegDst = 0;
	ALUsrc = 0;
	MemtoReg = 0;
	RegWrite = 0;
	MemRead = 0;
	MemWrite = 0;
	Branch = 0;
	ALUop[1] = 0;
	ALUop[0] = 0;
	jump = 1 ;
	jal = 1 ;
	jr = 0 ;
	end
	else if (inst_in == 6'b000011)
	begin
	RegDst = 0;
	ALUsrc = 0;
	MemtoReg = 0;
	RegWrite = 0;
	MemRead = 0;
	MemWrite = 0;
	Branch = 0;
	ALUop[1] = 0;
	ALUop[0] = 0;
	jump = 0 ;
	jal = 0 ;
	jr = 1 ;
	end
end
initial
begin
	//$monitor ( "%t , %b" , $time , jr ) ;
end
endmodule
