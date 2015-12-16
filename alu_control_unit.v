module alu_control_unit(Instruction,CUIn,ALUOut);
input [5:0] Instruction;
input [5:0] CUIn;
output reg [3:0] ALUOut;
always @ (CUIn) begin
	case(CUIn)//opcode
		6'b000_000:
		case(Instruction)//R-type function/[5-0] instruction
		6'b100_000:ALUOut=4'b0010;//add
		6'b000_000:ALUOut=4'b0100;//sll
		6'b100_100:ALUOut=4'b0000;//and
		6'b100_111:ALUOut=4'b1100;//nor
		6'b001_000:ALUOut=4'b1111;//jr
		6'b101_010:ALUOut=4'b0111;//slt
		endcase
		6'b100_011:ALUOut=4'b1000;//lw
		6'b101_011:ALUOut=4'b1001;//sw
		6'b001_000:ALUOut=4'b0011;//addi
		6'b001_100:ALUOut=4'b0001;//andi
		6'b000_100:ALUOut=4'b1010;//beq	
		6'b000_011:ALUOut=4'b1011;//jal
	endcase
end
endmodule
