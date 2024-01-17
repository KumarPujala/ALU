module tb_alu();
	reg [3:0] A,B;
	reg [2:0] option;
	wire [3:0] alu_out;
	alu uut(A,B,option,alu_out);
	initial
	begin 
		A=4'b0010;
		B=4'b0001;
		option=3'b000;
		#10 option=3'b001;
		#10 option=3'b010;
		#10	option=3'b011;
		#10	option=3'b100;
		#10	option=3'b101;
		#10	option=3'b110;
		#10 option=3'b111;
		#10 $finish;
	end
endmodule
