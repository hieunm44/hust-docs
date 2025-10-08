module butterfly2
	(
	// x: Phan thuc
	// y: Phan ao
	input signed [15:0] xin1,
	input signed [15:0] yin1,
	input signed [15:0] xin2,
	input signed [15:0] yin2,
	output signed [15:0] xout1,
	output signed [15:0] yout1,
	output signed [15:0] xout2,
	output signed [15:0] yout2
   );


	// Dau ra thu nhat
	assign xout1=xin1+xin2;
	assign yout1=yin1+yin2;

	// Dau ra thu hai
	assign xout2=xin1-xin2;
	assign yout2=yin1-yin2;

endmodule
