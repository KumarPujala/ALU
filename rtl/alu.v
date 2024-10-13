module alu(A,B,option,alu_out);
input [3:0] A,B;
input [2:0] option;
output reg [3:0] alu_out;

always @(*)
begin
	case(option)
		3'b000: alu_out = 0;
		3'b001: alu_out = A+B;
		3'b010: alu_out = A-B;
		3'b011: alu_out = A&B;
		3'b100: alu_out = A|B;
		3'b101: alu_out = ~A;
		3'b110: alu_out = ~B;
		default: alu_out = 0;
	endcase
end 
endmodule

