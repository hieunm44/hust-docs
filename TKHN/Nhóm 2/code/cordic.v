module cordic
	(
    input clk,
	 // x: Phan thuc
	 // y: Phan ao
    input signed [15:0] xin,
    input signed [15:0] yin,
    input signed [31:0] zangle, //Goc quay
    output signed [15:0] xout,
    output signed [15:0] yout
    );

	reg znext;

	wire signed [31:0] arctan_LUT [0:15];
	/* bit 31 -> -180
		bit 30 -> 90
		bit m=29->0 -> 90/2^(30-m)
	*/
	assign arctan_LUT[00] = 'b00100000000000000000000000000000; // arctan(2^0)=45o
	assign arctan_LUT[01] = 'b00010010111001000000010100011101; // arctan(2^-1)=90/2^2+90/2^5+90/2^7+90/2^8+90/2^9+90/2^12+90/2^20+90/2^22+90/2^26+90/2^27+90/2^28+90/2^30
	assign arctan_LUT[02] = 'b00001001111110110011100001011011; // arctan(2^-2)
	assign arctan_LUT[03] = 'b00000101000100010001000111010100; // arctan(2^-3)
	assign arctan_LUT[04] = 'b00000010100010110000110101000011;	// arctan(2^-4)
	assign arctan_LUT[05] = 'b00000001010001011101011111100001; // arctan(2^-5)
	assign arctan_LUT[06] = 'b00000000101000101111011000011110; // arctan(2^-6)
	assign arctan_LUT[07] = 'b00000000010100010111110001010101; // arctan(2^-7)
	assign arctan_LUT[08] = 'b00000000001010001011111001010011; // arctan(2^-8)
	assign arctan_LUT[09] = 'b00000000000101000101111100101110; // arctan(2^-9)
	assign arctan_LUT[10] = 'b00000000000010100010111110011000; // arctan(2^-10)
	assign arctan_LUT[11] = 'b00000000000001010001011111001100; // arctan(2^-11)
	assign arctan_LUT[12] = 'b00000000000000101000101111100110; // arctan(2^-12)
	assign arctan_LUT[13] = 'b00000000000000010100010111110011; // arctan(2^-13)
	assign arctan_LUT[14] = 'b00000000000000001010001011111001; // arctan(2^-14)
	assign arctan_LUT[15] = 'b00000000000000000101000101111100; // arctan(2^-15)

	reg signed [15:0] xtemp_in,ytemp_in;

	wire [1:0] quad;
	assign quad = zangle[31:30];

	reg signed [15:0] x [0:16];
	reg signed [15:0] y [0:16];
	reg signed [31:0] z [0:16]; 
	
	always @*
	begin
		xtemp_in = (xin>>>1)+(xin>>>4)+(xin>>>5)+(xin>>>7)+(xin>>>8)+(xin>>>10)+(xin>>>11)+(xin>>>12)+(xin>>>14);
		ytemp_in = (yin>>>1)+(yin>>>4)+(yin>>>5)+(yin>>>7)+(yin>>>8)+(yin>>>10)+(yin>>>11)+(yin>>>12)+(yin>>>14);
		case(quad)
			2'b00,2'b11: //-90 den 90
				begin		 
				x[0] <= xtemp_in;
				y[0] <= ytemp_in;
				z[0] <= zangle;
				end
			2'b01:				//90 den 180, tru 90	(goc phan tu thu 2)
			begin
				x[0] <= -ytemp_in;			
				y[0] <= xtemp_in;
				z[0] <= {2'b00,zangle[29:0]};	
			end
			2'b10:				//-180 den -90, cong 90 (goc phan tu thu 3)
			begin
				x[0] <= ytemp_in;
				y[0] <= -xtemp_in;
				z[0] <= {2'b11,zangle[29:0]};
			end
		endcase
	end

	
	genvar i;

	generate
	for (i=0;i<=15;i=i+1) // Vong lap CORDIC
	begin: iterations
		wire signed [15:0] xshift, yshift;
		assign xshift = x[i] >>> i; 
		assign yshift = y[i] >>> i;
		
		always @(posedge clk)
		begin
			x[i+1] <= z[i][31] ? x[i]+ yshift:x[i]-yshift;
			y[i+1] <= z[i][31] ? y[i]-xshift:y[i]+xshift;
			z[i+1] <= z[i][31] ? z[i]+arctan_LUT[i]:z[i]-arctan_LUT[i];		
		end
	end
	endgenerate
	
	assign xout = x[16];
	assign yout = y[16];

endmodule
