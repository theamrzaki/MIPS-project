module alu_control_unit(Opcode,Funct,Output);
input [5:0] Opcode;//operation control code / [31-26] instruction
input [5:0] Funct;//R-type function /[5-0] instruction
output reg [3:0] Output;
always @ (Opcode) begin
	case(Opcode)
		6'b000_000:
		case(Funct)
		6'b100_000:Output=4'b0010;//add
		6'b000_000:Output=4'b0100;//sll
		6'b100_100:Output=4'b0000;//and
		6'b100_111:Output=4'b1100;//nor
		6'b001_000:Output=4'b1111;//jr
		6'b101_010:Output=4'b0111;//slt
		endcase
		6'b100_011:Output=4'b1000;//lw
		6'b101_011:Output=4'b1001;//sw
		6'b001_000:Output=4'b0011;//addi
		6'b001_100:Output=4'b0001;//andi
		6'b000_100:Output=4'b1010;//beq	
		6'b000_011:Output=4'b1011;//jal
	endcase
end
endmodule
