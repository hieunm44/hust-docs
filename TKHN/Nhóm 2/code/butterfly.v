module butterfly
	(
	input clk,
	// x: Phan thuc
	// y: Phan ao
	input signed [15:0] xin1,
	input signed [15:0] yin1,
	input signed [15:0] xin2,
	input signed [15:0] yin2,
	input signed [31:0] zangle, //Goc quay
	output signed [15:0] xout1,
	output signed [15:0] yout1,
	output signed [15:0] xout2,
	output signed [15:0] yout2
   );

	wire signed [15:0] xtemp,ytemp; //Cac bien trung gian truoc khi dua vao bo CORDIC

	// Dau ra thu nhat
	assign xout1=xin1+xin2;
	assign yout1=yin1+yin2;

	// 2 bien dua vao bo Cordic de tinh dau ra thu hai
	assign xtemp=xin1-xin2;
	assign ytemp=yin1-yin2;

	cordic c(.clk(clk),.xin(xtemp),.yin(ytemp),.zangle(zangle),.xout(xout2),.yout(yout2)); //Dau ra thu hai

endmodule
