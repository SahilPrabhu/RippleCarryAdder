module rca_4bit_tb;

	// Inputs
	reg [3:0] x;
	reg [3:0] y;
	reg ci;

	// Outputs
	wire [3:0] s;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	rca_4bit uut (
		.x(x), 
		.y(y), 
		.ci(ci), 
		.s(s), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		x = 4'b0111;
		y = 4'b0010;
		ci = 0;
		#100;
        
		x = 4'b0110;
		y = 4'b1001;
		ci = 1;
		#100;
        
		  
		x = 4'b0011;
		y = 4'b0101;
		ci = 1;
		#100;

	end
      
endmodule