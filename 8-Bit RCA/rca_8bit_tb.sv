module rca_8bit_tb;

	// Inputs
	reg [7:0] x;
	reg [7:0] y;
	reg ci;

	// Outputs
	wire [7:0] s;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	rca_8bit uut (
		.x(x), 
		.y(y), 
		.ci(ci), 
		.s(s), 
		.co(co)
	);

	initial begin

		x = 8'b00000000;
		y = 8'b00000000;
		ci = 0;
		#100;
        
		x = 8'b00000001;
		y = 8'b00000010;
		ci = 1;
		#100;
        
		  
		x = 8'b00000011;
		y = 8'b00000100;
		ci = 1;
		#100;
        
		  
		x = 8'b00000100;
		y = 8'b00000101;
		ci = 0;
		#100;
        
		  
		x = 8'b00000110;
		y = 8'b00001100;
		ci = 1;
		#100;

	end
      
endmodule