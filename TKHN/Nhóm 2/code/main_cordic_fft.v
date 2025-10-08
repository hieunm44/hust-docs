module main_cordic_fft
	(
	input clk,
	
	// x: Phan thuc
	// y: Phan ao
	input signed [15:0] xin0,
	input signed [15:0] xin1,
	input signed [15:0] xin2,
	input signed [15:0] xin3,
	input signed [15:0] xin4,
	input signed [15:0] xin5,
	input signed [15:0] xin6,
	input signed [15:0] xin7,
	input signed [15:0] xin8,
	input signed [15:0] xin9,
	input signed [15:0] xin10,
	input signed [15:0] xin11,
	input signed [15:0] xin12,
	input signed [15:0] xin13,
	input signed [15:0] xin14,
	input signed [15:0] xin15,
	input signed [15:0] xin16,
	input signed [15:0] xin17,
	input signed [15:0] xin18,
	input signed [15:0] xin19,
	input signed [15:0] xin20,
	input signed [15:0] xin21,
	input signed [15:0] xin22,
	input signed [15:0] xin23,
	input signed [15:0] xin24,
	input signed [15:0] xin25,
	input signed [15:0] xin26,
	input signed [15:0] xin27,
	input signed [15:0] xin28,
	input signed [15:0] xin29,
	input signed [15:0] xin30,
	input signed [15:0] xin31,
	input signed [15:0] xin32,
	input signed [15:0] xin33,
	input signed [15:0] xin34,
	input signed [15:0] xin35,
	input signed [15:0] xin36,
	input signed [15:0] xin37,
	input signed [15:0] xin38,
	input signed [15:0] xin39,
	input signed [15:0] xin40,
	input signed [15:0] xin41,
	input signed [15:0] xin42,
	input signed [15:0] xin43,
	input signed [15:0] xin44,
	input signed [15:0] xin45,
	input signed [15:0] xin46,
	input signed [15:0] xin47,
	input signed [15:0] xin48,
	input signed [15:0] xin49,
	input signed [15:0] xin50,
	input signed [15:0] xin51,
	input signed [15:0] xin52,
	input signed [15:0] xin53,
	input signed [15:0] xin54,
	input signed [15:0] xin55,
	input signed [15:0] xin56,
	input signed [15:0] xin57,
	input signed [15:0] xin58,
	input signed [15:0] xin59,
	input signed [15:0] xin60,
	input signed [15:0] xin61,
	input signed [15:0] xin62,
	input signed [15:0] xin63,
	
	input signed [15:0] yin0,
	input signed [15:0] yin1,
	input signed [15:0] yin2,
	input signed [15:0] yin3,
	input signed [15:0] yin4,
	input signed [15:0] yin5,
	input signed [15:0] yin6,
	input signed [15:0] yin7,
	input signed [15:0] yin8,
	input signed [15:0] yin9,
	input signed [15:0] yin10,
	input signed [15:0] yin11,
	input signed [15:0] yin12,
	input signed [15:0] yin13,
	input signed [15:0] yin14,
	input signed [15:0] yin15,
	input signed [15:0] yin16,
	input signed [15:0] yin17,
	input signed [15:0] yin18,
	input signed [15:0] yin19,
	input signed [15:0] yin20,
	input signed [15:0] yin21,
	input signed [15:0] yin22,
	input signed [15:0] yin23,
	input signed [15:0] yin24,
	input signed [15:0] yin25,
	input signed [15:0] yin26,
	input signed [15:0] yin27,
	input signed [15:0] yin28,
	input signed [15:0] yin29,
	input signed [15:0] yin30,
	input signed [15:0] yin31,
	input signed [15:0] yin32,
	input signed [15:0] yin33,
	input signed [15:0] yin34,
	input signed [15:0] yin35,
	input signed [15:0] yin36,
	input signed [15:0] yin37,
	input signed [15:0] yin38,
	input signed [15:0] yin39,
	input signed [15:0] yin40,
	input signed [15:0] yin41,
	input signed [15:0] yin42,
	input signed [15:0] yin43,
	input signed [15:0] yin44,
	input signed [15:0] yin45,
	input signed [15:0] yin46,
	input signed [15:0] yin47,
	input signed [15:0] yin48,
	input signed [15:0] yin49,
	input signed [15:0] yin50,
	input signed [15:0] yin51,
	input signed [15:0] yin52,
	input signed [15:0] yin53,
	input signed [15:0] yin54,
	input signed [15:0] yin55,
	input signed [15:0] yin56,
	input signed [15:0] yin57,
	input signed [15:0] yin58,
	input signed [15:0] yin59,
	input signed [15:0] yin60,
	input signed [15:0] yin61,
	input signed [15:0] yin62,
	input signed [15:0] yin63,
	
	output signed [15:0] xout0,
	output signed [15:0] xout1,
	output signed [15:0] xout2,
	output signed [15:0] xout3,
	output signed [15:0] xout4,
	output signed [15:0] xout5,
	output signed [15:0] xout6,
	output signed [15:0] xout7,
	output signed [15:0] xout8,
	output signed [15:0] xout9,
	output signed [15:0] xout10,
	output signed [15:0] xout11,
	output signed [15:0] xout12,
	output signed [15:0] xout13,
	output signed [15:0] xout14,
	output signed [15:0] xout15,
	output signed [15:0] xout16,
	output signed [15:0] xout17,
	output signed [15:0] xout18,
	output signed [15:0] xout19,
	output signed [15:0] xout20,
	output signed [15:0] xout21,
	output signed [15:0] xout22,
	output signed [15:0] xout23,
	output signed [15:0] xout24,
	output signed [15:0] xout25,
	output signed [15:0] xout26,
	output signed [15:0] xout27,
	output signed [15:0] xout28,
	output signed [15:0] xout29,
	output signed [15:0] xout30,
	output signed [15:0] xout31,
	output signed [15:0] xout32,
	output signed [15:0] xout33,
	output signed [15:0] xout34,
	output signed [15:0] xout35,
	output signed [15:0] xout36,
	output signed [15:0] xout37,
	output signed [15:0] xout38,
	output signed [15:0] xout39,
	output signed [15:0] xout40,
	output signed [15:0] xout41,
	output signed [15:0] xout42,
	output signed [15:0] xout43,
	output signed [15:0] xout44,
	output signed [15:0] xout45,
	output signed [15:0] xout46,
	output signed [15:0] xout47,
	output signed [15:0] xout48,
	output signed [15:0] xout49,
	output signed [15:0] xout50,
	output signed [15:0] xout51,
	output signed [15:0] xout52,
	output signed [15:0] xout53,
	output signed [15:0] xout54,
	output signed [15:0] xout55,
	output signed [15:0] xout56,
	output signed [15:0] xout57,
	output signed [15:0] xout58,
	output signed [15:0] xout59,
	output signed [15:0] xout60,
	output signed [15:0] xout61,
	output signed [15:0] xout62,
	output signed [15:0] xout63,
	
	output signed [15:0] yout0,
	output signed [15:0] yout1,
	output signed [15:0] yout2,
	output signed [15:0] yout3,
	output signed [15:0] yout4,
	output signed [15:0] yout5,
	output signed [15:0] yout6,
	output signed [15:0] yout7,
	output signed [15:0] yout8,
	output signed [15:0] yout9,
	output signed [15:0] yout10,
	output signed [15:0] yout11,
	output signed [15:0] yout12,
	output signed [15:0] yout13,
	output signed [15:0] yout14,
	output signed [15:0] yout15,
	output signed [15:0] yout16,
	output signed [15:0] yout17,
	output signed [15:0] yout18,
	output signed [15:0] yout19,
	output signed [15:0] yout20,
	output signed [15:0] yout21,
	output signed [15:0] yout22,
	output signed [15:0] yout23,
	output signed [15:0] yout24,
	output signed [15:0] yout25,
	output signed [15:0] yout26,
	output signed [15:0] yout27,
	output signed [15:0] yout28,
	output signed [15:0] yout29,
	output signed [15:0] yout30,
	output signed [15:0] yout31,
	output signed [15:0] yout32,
	output signed [15:0] yout33,
	output signed [15:0] yout34,
	output signed [15:0] yout35,
	output signed [15:0] yout36,
	output signed [15:0] yout37,
	output signed [15:0] yout38,
	output signed [15:0] yout39,
	output signed [15:0] yout40,
	output signed [15:0] yout41,
	output signed [15:0] yout42,
	output signed [15:0] yout43,
	output signed [15:0] yout44,
	output signed [15:0] yout45,
	output signed [15:0] yout46,
	output signed [15:0] yout47,
	output signed [15:0] yout48,
	output signed [15:0] yout49,
	output signed [15:0] yout50,
	output signed [15:0] yout51,
	output signed [15:0] yout52,
	output signed [15:0] yout53,
	output signed [15:0] yout54,
	output signed [15:0] yout55,
	output signed [15:0] yout56,
	output signed [15:0] yout57,
	output signed [15:0] yout58,
	output signed [15:0] yout59,
	output signed [15:0] yout60,
	output signed [15:0] yout61,
	output signed [15:0] yout62,
	output signed [15:0] yout63
	);

	wire signed [31:0] angle_LUT [1:31]; // Bang goc quay cho fft 64 diem

	assign angle_LUT[1] = 'b11111100000000000000000000000000; // -5.625 (-pi/32)
	assign angle_LUT[2] = 'b11111000000000000000000000000000; // -11.25 (-2pi/32)
	assign angle_LUT[3] = 'b11110100000000000000000000000000; 
	assign angle_LUT[4] = 'b11110000000000000000000000000000; 
	assign angle_LUT[5] = 'b11101100000000000000000000000000; 
	assign angle_LUT[6] = 'b11101000000000000000000000000000; 
	assign angle_LUT[7] = 'b11100100000000000000000000000000; 
	assign angle_LUT[8] = 'b11100000000000000000000000000000;
	assign angle_LUT[9] = 'b11011100000000000000000000000000;
	assign angle_LUT[10] = 'b11011000000000000000000000000000;
	assign angle_LUT[11] = 'b11010100000000000000000000000000;
	assign angle_LUT[12] = 'b11010000000000000000000000000000;
	assign angle_LUT[13] = 'b11001100000000000000000000000000;
	assign angle_LUT[14] = 'b11001000000000000000000000000000;
	assign angle_LUT[15] = 'b11000100000000000000000000000000;
	assign angle_LUT[16] = 'b11000000000000000000000000000000;
	assign angle_LUT[17] = 'b10111100000000000000000000000000;
	assign angle_LUT[18] = 'b10111000000000000000000000000000;
	assign angle_LUT[19] = 'b10110100000000000000000000000000;
	assign angle_LUT[20] = 'b10110000000000000000000000000000;
	assign angle_LUT[21] = 'b10101100000000000000000000000000;
	assign angle_LUT[22] = 'b10101000000000000000000000000000;
	assign angle_LUT[23] = 'b10100100000000000000000000000000;
	assign angle_LUT[24] = 'b10100000000000000000000000000000;
	assign angle_LUT[25] = 'b10011100000000000000000000000000;
	assign angle_LUT[26] = 'b10011000000000000000000000000000;
	assign angle_LUT[27] = 'b10010100000000000000000000000000;
	assign angle_LUT[28] = 'b10010000000000000000000000000000;
	assign angle_LUT[29] = 'b10001100000000000000000000000000;
	assign angle_LUT[30] = 'b10001000000000000000000000000000;
	assign angle_LUT[31] = 'b10000100000000000000000000000000;
	
	// 2 mang luu 16 gia tri dau vao de dung trong vong for
	wire signed [15:0] xtemp_in [0:63];
	wire signed [15:0] ytemp_in [0:63];

	// 2 mang luu 16 gia tri sau stage 1
	wire signed [15:0] xtemp1 [0:63];
	wire signed [15:0] ytemp1 [0:63];

	// 2 mang luu 16 gia tri sau stage 2
	wire signed [15:0] xtemp2 [0:63];
	wire signed [15:0] ytemp2 [0:63];

	// 2 mang luu 16 gia tri sau stage 3
	wire signed [15:0] xtemp3 [0:63];
	wire signed [15:0] ytemp3 [0:63];
	
	// 2 mang luu 16 gia tri sau stage 4
	wire signed [15:0] xtemp4 [0:63];
	wire signed [15:0] ytemp4 [0:63];
	
	// 2 mang luu 16 gia tri sau stage 5
	wire signed [15:0] xtemp5 [0:63];
	wire signed [15:0] ytemp5 [0:63];
	
	// Gan dau vao cho cac mang xtemp_in,ytemp_in
	assign {xtemp_in[0],xtemp_in[1],xtemp_in[2],xtemp_in[3],xtemp_in[4],xtemp_in[5],xtemp_in[6],xtemp_in[7],xtemp_in[8],xtemp_in[9],xtemp_in[10],xtemp_in[11],xtemp_in[12],xtemp_in[13],xtemp_in[14],xtemp_in[15],xtemp_in[16],xtemp_in[17],xtemp_in[18],xtemp_in[19],xtemp_in[20],xtemp_in[21],xtemp_in[22],xtemp_in[23],xtemp_in[24],xtemp_in[25],xtemp_in[26],xtemp_in[27],xtemp_in[28],xtemp_in[29],xtemp_in[30],xtemp_in[31],xtemp_in[32],xtemp_in[33],xtemp_in[34],xtemp_in[35],xtemp_in[36],xtemp_in[37],xtemp_in[38],xtemp_in[39],xtemp_in[40],xtemp_in[41],xtemp_in[42],xtemp_in[43],xtemp_in[44],xtemp_in[45],xtemp_in[46],xtemp_in[47],xtemp_in[48],xtemp_in[49],xtemp_in[50],xtemp_in[51],xtemp_in[52],xtemp_in[53],xtemp_in[54],xtemp_in[55],xtemp_in[56],xtemp_in[57],xtemp_in[58],xtemp_in[59],xtemp_in[60],xtemp_in[61],xtemp_in[62],xtemp_in[63]}={xin0,xin1,xin2,xin3,xin4,xin5,xin6,xin7,xin8,xin9,xin10,xin11,xin12,xin13,xin14,xin15,xin16,xin17,xin18,xin19,xin20,xin21,xin22,xin23,xin24,xin25,xin26,xin27,xin28,xin29,xin30,xin31,xin32,xin33,xin34,xin35,xin36,xin37,xin38,xin39,xin40,xin41,xin42,xin43,xin44,xin45,xin46,xin47,xin48,xin49,xin50,xin51,xin52,xin53,xin54,xin55,xin56,xin57,xin58,xin59,xin60,xin61,xin62,xin63};
	assign {ytemp_in[0],ytemp_in[1],ytemp_in[2],ytemp_in[3],ytemp_in[4],ytemp_in[5],ytemp_in[6],ytemp_in[7],ytemp_in[8],ytemp_in[9],ytemp_in[10],ytemp_in[11],ytemp_in[12],ytemp_in[13],ytemp_in[14],ytemp_in[15],ytemp_in[16],ytemp_in[17],ytemp_in[18],ytemp_in[19],ytemp_in[20],ytemp_in[21],ytemp_in[22],ytemp_in[23],ytemp_in[24],ytemp_in[25],ytemp_in[26],ytemp_in[27],ytemp_in[28],ytemp_in[29],ytemp_in[30],ytemp_in[31],ytemp_in[32],ytemp_in[33],ytemp_in[34],ytemp_in[35],ytemp_in[36],ytemp_in[37],ytemp_in[38],ytemp_in[39],ytemp_in[40],ytemp_in[41],ytemp_in[42],ytemp_in[43],ytemp_in[44],ytemp_in[45],ytemp_in[46],ytemp_in[47],ytemp_in[48],ytemp_in[49],ytemp_in[50],ytemp_in[51],ytemp_in[52],ytemp_in[53],ytemp_in[54],ytemp_in[55],ytemp_in[56],ytemp_in[57],ytemp_in[58],ytemp_in[59],ytemp_in[60],ytemp_in[61],ytemp_in[62],ytemp_in[63]}={yin0,yin1,yin2,yin3,yin4,yin5,yin6,yin7,yin8,yin9,yin10,yin11,yin12,yin13,yin14,yin15,yin16,yin17,yin18,yin19,yin20,yin21,yin22,yin23,yin24,yin25,yin26,yin27,yin28,yin29,yin30,yin31,yin32,yin33,yin34,yin35,yin36,yin37,yin38,yin39,yin40,yin41,yin42,yin43,yin44,yin45,yin46,yin47,yin48,yin49,yin50,yin51,yin52,yin53,yin54,yin55,yin56,yin57,yin58,yin59,yin60,yin61,yin62,yin63};

	genvar i;

	// Stage 1
	butterfly2 a1(.xin1(xtemp_in[0]),.yin1(ytemp_in[0]),.xin2(xtemp_in[32]),.yin2(ytemp_in[32]),.xout1(xtemp1[0]),.yout1(ytemp1[0]),.xout2(xtemp1[32]),.yout2(ytemp1[32]));
	generate
	for (i=1;i<32;i=i+1)
	begin: butterflies1
		butterfly b1(.clk(clk),.xin1(xtemp_in[i]),.yin1(ytemp_in[i]),.xin2(xtemp_in[i+32]),.yin2(ytemp_in[i+32]),.zangle(angle_LUT[i]),.xout1(xtemp1[i]),.yout1(ytemp1[i]),.xout2(xtemp1[i+32]),.yout2(ytemp1[i+32]));
	end
	endgenerate

	// Stage 2
	generate
	for (i=0;i<64;i=i+32)
	begin: butterfly2W0
		butterfly2 a2(.xin1(xtemp1[i]),.yin1(ytemp1[i]),.xin2(xtemp1[i+16]),.yin2(ytemp1[i+16]),.xout1(xtemp2[i]),.yout1(ytemp2[i]),.xout2(xtemp2[i+16]),.yout2(ytemp2[i+16]));
	end
	endgenerate
	
	generate
	for (i=1;i<16;i=i+1)
	begin: butterflies2
		butterfly b2(.clk(clk),.xin1(xtemp1[i]),.yin1(ytemp1[i]),.xin2(xtemp1[i+16]),.yin2(ytemp1[i+16]),.zangle(angle_LUT[2*i]),.xout1(xtemp2[i]),.yout1(ytemp2[i]),.xout2(xtemp2[i+16]),.yout2(ytemp2[i+16]));
		butterfly b3(.clk(clk),.xin1(xtemp1[i+32]),.yin1(ytemp1[i+32]),.xin2(xtemp1[i+48]),.yin2(ytemp1[i+48]),.zangle(angle_LUT[2*i]),.xout1(xtemp2[i+32]),.yout1(ytemp2[i+32]),.xout2(xtemp2[i+48]),.yout2(ytemp2[i+48]));
	end
	endgenerate

	//Stage 3
	generate
	for (i=0;i<64;i=i+16)
	begin: butterfly3W0
		butterfly2 a3(.xin1(xtemp2[i]),.yin1(ytemp2[i]),.xin2(xtemp2[i+8]),.yin2(ytemp2[i+8]),.xout1(xtemp3[i]),.yout1(ytemp3[i]),.xout2(xtemp3[i+8]),.yout2(ytemp3[i+8]));
	end
	endgenerate
	
	generate
	for (i=1;i<8;i=i+1)
	begin: butterflies3
		butterfly b4(.clk(clk),.xin1(xtemp2[i]),.yin1(ytemp2[i]),.xin2(xtemp2[i+8]),.yin2(ytemp2[i+8]),.zangle(angle_LUT[4*i]),.xout1(xtemp3[i]),.yout1(ytemp3[i]),.xout2(xtemp3[i+8]),.yout2(ytemp3[i+8]));
		butterfly b5(.clk(clk),.xin1(xtemp2[i+16]),.yin1(ytemp2[i+16]),.xin2(xtemp2[i+24]),.yin2(ytemp2[i+24]),.zangle(angle_LUT[4*i]),.xout1(xtemp3[i+16]),.yout1(ytemp3[i+16]),.xout2(xtemp3[i+24]),.yout2(ytemp3[i+24]));
		butterfly b6(.clk(clk),.xin1(xtemp2[i+32]),.yin1(ytemp2[i+32]),.xin2(xtemp2[i+40]),.yin2(ytemp2[i+40]),.zangle(angle_LUT[4*i]),.xout1(xtemp3[i+32]),.yout1(ytemp3[i+32]),.xout2(xtemp3[i+40]),.yout2(ytemp3[i+40]));
		butterfly b7(.clk(clk),.xin1(xtemp2[i+48]),.yin1(ytemp2[i+48]),.xin2(xtemp2[i+56]),.yin2(ytemp2[i+56]),.zangle(angle_LUT[4*i]),.xout1(xtemp3[i+48]),.yout1(ytemp3[i+48]),.xout2(xtemp3[i+56]),.yout2(ytemp3[i+56]));
	end
	endgenerate

	// Stage 4
	generate
	for (i=0;i<64;i=i+8)
	begin: butterfly4W0
		butterfly2 a4(.xin1(xtemp3[i]),.yin1(ytemp3[i]),.xin2(xtemp3[i+4]),.yin2(ytemp3[i+4]),.xout1(xtemp4[i]),.yout1(ytemp4[i]),.xout2(xtemp4[i+4]),.yout2(ytemp4[i+4]));
	end
	endgenerate

	generate
	for (i=1;i<4;i=i+1)
	begin: butterflies4
		butterfly b8(.clk(clk),.xin1(xtemp3[i]),.yin1(ytemp3[i]),.xin2(xtemp3[i+4]),.yin2(ytemp3[i+4]),.zangle(angle_LUT[8*i]),.xout1(xtemp4[i]),.yout1(ytemp4[i]),.xout2(xtemp4[i+4]),.yout2(ytemp4[i+4]));
		butterfly b9(.clk(clk),.xin1(xtemp3[i+8]),.yin1(ytemp3[i+8]),.xin2(xtemp3[i+12]),.yin2(ytemp3[i+12]),.zangle(angle_LUT[8*i]),.xout1(xtemp4[i+8]),.yout1(ytemp4[i+8]),.xout2(xtemp4[i+12]),.yout2(ytemp4[i+12]));
		butterfly b10(.clk(clk),.xin1(xtemp3[i+16]),.yin1(ytemp3[i+16]),.xin2(xtemp3[i+20]),.yin2(ytemp3[i+20]),.zangle(angle_LUT[8*i]),.xout1(xtemp4[i+16]),.yout1(ytemp4[i+16]),.xout2(xtemp4[i+20]),.yout2(ytemp4[i+20]));
		butterfly b11(.clk(clk),.xin1(xtemp3[i+24]),.yin1(ytemp3[i+24]),.xin2(xtemp3[i+28]),.yin2(ytemp3[i+28]),.zangle(angle_LUT[8*i]),.xout1(xtemp4[i+24]),.yout1(ytemp4[i+24]),.xout2(xtemp4[i+28]),.yout2(ytemp4[i+28]));
		butterfly b12(.clk(clk),.xin1(xtemp3[i+32]),.yin1(ytemp3[i+32]),.xin2(xtemp3[i+36]),.yin2(ytemp3[i+36]),.zangle(angle_LUT[8*i]),.xout1(xtemp4[i+32]),.yout1(ytemp4[i+32]),.xout2(xtemp4[i+36]),.yout2(ytemp4[i+36]));
		butterfly b13(.clk(clk),.xin1(xtemp3[i+40]),.yin1(ytemp3[i+40]),.xin2(xtemp3[i+44]),.yin2(ytemp3[i+44]),.zangle(angle_LUT[8*i]),.xout1(xtemp4[i+40]),.yout1(ytemp4[i+40]),.xout2(xtemp4[i+44]),.yout2(ytemp4[i+44]));
		butterfly b14(.clk(clk),.xin1(xtemp3[i+48]),.yin1(ytemp3[i+48]),.xin2(xtemp3[i+52]),.yin2(ytemp3[i+52]),.zangle(angle_LUT[8*i]),.xout1(xtemp4[i+48]),.yout1(ytemp4[i+48]),.xout2(xtemp4[i+52]),.yout2(ytemp4[i+52]));
		butterfly b15(.clk(clk),.xin1(xtemp3[i+56]),.yin1(ytemp3[i+56]),.xin2(xtemp3[i+60]),.yin2(ytemp3[i+60]),.zangle(angle_LUT[8*i]),.xout1(xtemp4[i+56]),.yout1(ytemp4[i+56]),.xout2(xtemp4[i+60]),.yout2(ytemp4[i+60]));
	end
	endgenerate
	
	// Stage 5
	generate
	for (i=0;i<64;i=i+4)
	begin: butterfly5W0
		butterfly2 a5(.xin1(xtemp4[i]),.yin1(ytemp4[i]),.xin2(xtemp4[i+2]),.yin2(ytemp4[i+2]),.xout1(xtemp5[i]),.yout1(ytemp5[i]),.xout2(xtemp5[i+2]),.yout2(ytemp5[i+2]));
	end
	endgenerate
	
	generate
	for (i=1;i<2;i=i+1)
	begin: butterflies5
		butterfly b16(.clk(clk),.xin1(xtemp4[i]),.yin1(ytemp4[i]),.xin2(xtemp4[i+2]),.yin2(ytemp4[i+2]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i]),.yout1(ytemp5[i]),.xout2(xtemp5[i+2]),.yout2(ytemp5[i+2]));
		butterfly b17(.clk(clk),.xin1(xtemp4[i+4]),.yin1(ytemp4[i+4]),.xin2(xtemp4[i+6]),.yin2(ytemp4[i+6]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i+4]),.yout1(ytemp5[i+4]),.xout2(xtemp5[i+6]),.yout2(ytemp5[i+6]));
		butterfly b18(.clk(clk),.xin1(xtemp4[i+8]),.yin1(ytemp4[i+8]),.xin2(xtemp4[i+10]),.yin2(ytemp4[i+10]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i+8]),.yout1(ytemp5[i+8]),.xout2(xtemp5[i+10]),.yout2(ytemp5[i+10]));
		butterfly b19(.clk(clk),.xin1(xtemp4[i+12]),.yin1(ytemp4[i+12]),.xin2(xtemp4[i+14]),.yin2(ytemp4[i+14]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i+12]),.yout1(ytemp5[i+12]),.xout2(xtemp5[i+14]),.yout2(ytemp5[i+14]));
		butterfly b20(.clk(clk),.xin1(xtemp4[i+16]),.yin1(ytemp4[i+16]),.xin2(xtemp4[i+18]),.yin2(ytemp4[i+18]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i+16]),.yout1(ytemp5[i+16]),.xout2(xtemp5[i+18]),.yout2(ytemp5[i+18]));
		butterfly b21(.clk(clk),.xin1(xtemp4[i+20]),.yin1(ytemp4[i+20]),.xin2(xtemp4[i+22]),.yin2(ytemp4[i+22]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i+20]),.yout1(ytemp5[i+20]),.xout2(xtemp5[i+22]),.yout2(ytemp5[i+22]));
		butterfly b22(.clk(clk),.xin1(xtemp4[i+24]),.yin1(ytemp4[i+24]),.xin2(xtemp4[i+26]),.yin2(ytemp4[i+26]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i+24]),.yout1(ytemp5[i+24]),.xout2(xtemp5[i+26]),.yout2(ytemp5[i+26]));
		butterfly b23(.clk(clk),.xin1(xtemp4[i+28]),.yin1(ytemp4[i+28]),.xin2(xtemp4[i+30]),.yin2(ytemp4[i+30]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i+28]),.yout1(ytemp5[i+28]),.xout2(xtemp5[i+30]),.yout2(ytemp5[i+30]));
		butterfly b24(.clk(clk),.xin1(xtemp4[i+32]),.yin1(ytemp4[i+32]),.xin2(xtemp4[i+34]),.yin2(ytemp4[i+34]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i+32]),.yout1(ytemp5[i+32]),.xout2(xtemp5[i+34]),.yout2(ytemp5[i+34]));
		butterfly b25(.clk(clk),.xin1(xtemp4[i+36]),.yin1(ytemp4[i+36]),.xin2(xtemp4[i+38]),.yin2(ytemp4[i+38]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i+36]),.yout1(ytemp5[i+36]),.xout2(xtemp5[i+38]),.yout2(ytemp5[i+38]));
		butterfly b26(.clk(clk),.xin1(xtemp4[i+40]),.yin1(ytemp4[i+40]),.xin2(xtemp4[i+42]),.yin2(ytemp4[i+42]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i+40]),.yout1(ytemp5[i+40]),.xout2(xtemp5[i+42]),.yout2(ytemp5[i+42]));
		butterfly b27(.clk(clk),.xin1(xtemp4[i+44]),.yin1(ytemp4[i+44]),.xin2(xtemp4[i+46]),.yin2(ytemp4[i+46]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i+44]),.yout1(ytemp5[i+44]),.xout2(xtemp5[i+46]),.yout2(ytemp5[i+46]));
		butterfly b28(.clk(clk),.xin1(xtemp4[i+48]),.yin1(ytemp4[i+48]),.xin2(xtemp4[i+50]),.yin2(ytemp4[i+50]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i+48]),.yout1(ytemp5[i+48]),.xout2(xtemp5[i+50]),.yout2(ytemp5[i+50]));
		butterfly b29(.clk(clk),.xin1(xtemp4[i+52]),.yin1(ytemp4[i+52]),.xin2(xtemp4[i+54]),.yin2(ytemp4[i+54]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i+52]),.yout1(ytemp5[i+52]),.xout2(xtemp5[i+54]),.yout2(ytemp5[i+54]));
		butterfly b30(.clk(clk),.xin1(xtemp4[i+56]),.yin1(ytemp4[i+56]),.xin2(xtemp4[i+58]),.yin2(ytemp4[i+58]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i+56]),.yout1(ytemp5[i+56]),.xout2(xtemp5[i+58]),.yout2(ytemp5[i+58]));
		butterfly b31(.clk(clk),.xin1(xtemp4[i+60]),.yin1(ytemp4[i+60]),.xin2(xtemp4[i+62]),.yin2(ytemp4[i+62]),.zangle(angle_LUT[16*i]),.xout1(xtemp5[i+60]),.yout1(ytemp5[i+60]),.xout2(xtemp5[i+62]),.yout2(ytemp5[i+62]));
	end
	endgenerate
	
	// Stage 6: Output
	butterfly2 a6(.xin1(xtemp5[0]),.yin1(ytemp5[0]),.xin2(xtemp5[1]),.yin2(ytemp5[1]),.xout1(xout0),.yout1(yout0),.xout2(xout32),.yout2(yout32));
	butterfly2 a7(.xin1(xtemp5[2]),.yin1(ytemp5[2]),.xin2(xtemp5[3]),.yin2(ytemp5[3]),.xout1(xout16),.yout1(yout16),.xout2(xout48),.yout2(yout48));
	butterfly2 a8(.xin1(xtemp5[4]),.yin1(ytemp5[4]),.xin2(xtemp5[5]),.yin2(ytemp5[5]),.xout1(xout8),.yout1(yout8),.xout2(xout40),.yout2(yout40));
	butterfly2 a9(.xin1(xtemp5[6]),.yin1(ytemp5[6]),.xin2(xtemp5[7]),.yin2(ytemp5[7]),.xout1(xout24),.yout1(yout24),.xout2(xout56),.yout2(yout56));
	butterfly2 a10(.xin1(xtemp5[8]),.yin1(ytemp5[8]),.xin2(xtemp5[9]),.yin2(ytemp5[9]),.xout1(xout4),.yout1(yout4),.xout2(xout36),.yout2(yout36));
	butterfly2 a11(.xin1(xtemp5[10]),.yin1(ytemp5[10]),.xin2(xtemp5[11]),.yin2(ytemp5[11]),.xout1(xout20),.yout1(yout20),.xout2(xout52),.yout2(yout52));
	butterfly2 a12(.xin1(xtemp5[12]),.yin1(ytemp5[12]),.xin2(xtemp5[13]),.yin2(ytemp5[13]),.xout1(xout12),.yout1(yout12),.xout2(xout44),.yout2(yout44));
	butterfly2 a13(.xin1(xtemp5[14]),.yin1(ytemp5[14]),.xin2(xtemp5[15]),.yin2(ytemp5[15]),.xout1(xout28),.yout1(yout28),.xout2(xout60),.yout2(yout60));
	butterfly2 a14(.xin1(xtemp5[16]),.yin1(ytemp5[16]),.xin2(xtemp5[17]),.yin2(ytemp5[17]),.xout1(xout2),.yout1(yout2),.xout2(xout34),.yout2(yout34));
	butterfly2 a15(.xin1(xtemp5[18]),.yin1(ytemp5[18]),.xin2(xtemp5[19]),.yin2(ytemp5[19]),.xout1(xout18),.yout1(yout18),.xout2(xout50),.yout2(yout50));
	butterfly2 a16(.xin1(xtemp5[20]),.yin1(ytemp5[20]),.xin2(xtemp5[21]),.yin2(ytemp5[21]),.xout1(xout10),.yout1(yout10),.xout2(xout42),.yout2(yout42));
	butterfly2 a17(.xin1(xtemp5[22]),.yin1(ytemp5[22]),.xin2(xtemp5[23]),.yin2(ytemp5[23]),.xout1(xout26),.yout1(yout26),.xout2(xout58),.yout2(yout58));
	butterfly2 a18(.xin1(xtemp5[24]),.yin1(ytemp5[24]),.xin2(xtemp5[25]),.yin2(ytemp5[25]),.xout1(xout6),.yout1(yout6),.xout2(xout38),.yout2(yout38));
	butterfly2 a19(.xin1(xtemp5[26]),.yin1(ytemp5[26]),.xin2(xtemp5[27]),.yin2(ytemp5[27]),.xout1(xout22),.yout1(yout22),.xout2(xout54),.yout2(yout54));
	butterfly2 a20(.xin1(xtemp5[28]),.yin1(ytemp5[28]),.xin2(xtemp5[29]),.yin2(ytemp5[29]),.xout1(xout14),.yout1(yout14),.xout2(xout46),.yout2(yout46));
	butterfly2 a21(.xin1(xtemp5[30]),.yin1(ytemp5[30]),.xin2(xtemp5[31]),.yin2(ytemp5[31]),.xout1(xout30),.yout1(yout30),.xout2(xout62),.yout2(yout62));
	
	butterfly2 a22(.xin1(xtemp5[32]),.yin1(ytemp5[32]),.xin2(xtemp5[33]),.yin2(ytemp5[33]),.xout1(xout1),.yout1(yout1),.xout2(xout33),.yout2(yout33));
	butterfly2 a23(.xin1(xtemp5[34]),.yin1(ytemp5[34]),.xin2(xtemp5[35]),.yin2(ytemp5[35]),.xout1(xout17),.yout1(yout17),.xout2(xout49),.yout2(yout49));
	butterfly2 a24(.xin1(xtemp5[36]),.yin1(ytemp5[36]),.xin2(xtemp5[37]),.yin2(ytemp5[37]),.xout1(xout9),.yout1(yout9),.xout2(xout41),.yout2(yout41));
	butterfly2 a25(.xin1(xtemp5[38]),.yin1(ytemp5[38]),.xin2(xtemp5[39]),.yin2(ytemp5[39]),.xout1(xout25),.yout1(yout25),.xout2(xout57),.yout2(yout57));
	butterfly2 a26(.xin1(xtemp5[40]),.yin1(ytemp5[40]),.xin2(xtemp5[41]),.yin2(ytemp5[41]),.xout1(xout5),.yout1(yout5),.xout2(xout37),.yout2(yout37));
	butterfly2 a27(.xin1(xtemp5[42]),.yin1(ytemp5[42]),.xin2(xtemp5[43]),.yin2(ytemp5[43]),.xout1(xout21),.yout1(yout21),.xout2(xout53),.yout2(yout53));
	butterfly2 a28(.xin1(xtemp5[44]),.yin1(ytemp5[44]),.xin2(xtemp5[45]),.yin2(ytemp5[45]),.xout1(xout13),.yout1(yout13),.xout2(xout45),.yout2(yout45));
	butterfly2 a29(.xin1(xtemp5[46]),.yin1(ytemp5[46]),.xin2(xtemp5[47]),.yin2(ytemp5[47]),.xout1(xout29),.yout1(yout29),.xout2(xout61),.yout2(yout61));
	butterfly2 a30(.xin1(xtemp5[48]),.yin1(ytemp5[48]),.xin2(xtemp5[49]),.yin2(ytemp5[49]),.xout1(xout3),.yout1(yout3),.xout2(xout35),.yout2(yout35));
	butterfly2 a31(.xin1(xtemp5[50]),.yin1(ytemp5[50]),.xin2(xtemp5[51]),.yin2(ytemp5[51]),.xout1(xout19),.yout1(yout19),.xout2(xout51),.yout2(yout51));
	butterfly2 a32(.xin1(xtemp5[52]),.yin1(ytemp5[52]),.xin2(xtemp5[53]),.yin2(ytemp5[53]),.xout1(xout11),.yout1(yout11),.xout2(xout43),.yout2(yout43));
	butterfly2 a33(.xin1(xtemp5[54]),.yin1(ytemp5[54]),.xin2(xtemp5[55]),.yin2(ytemp5[55]),.xout1(xout27),.yout1(yout27),.xout2(xout59),.yout2(yout59));
	butterfly2 a34(.xin1(xtemp5[56]),.yin1(ytemp5[56]),.xin2(xtemp5[57]),.yin2(ytemp5[57]),.xout1(xout7),.yout1(yout7),.xout2(xout39),.yout2(yout39));
	butterfly2 a35(.xin1(xtemp5[58]),.yin1(ytemp5[58]),.xin2(xtemp5[59]),.yin2(ytemp5[59]),.xout1(xout23),.yout1(yout23),.xout2(xout55),.yout2(yout55));
	butterfly2 a36(.xin1(xtemp5[60]),.yin1(ytemp5[60]),.xin2(xtemp5[61]),.yin2(ytemp5[61]),.xout1(xout15),.yout1(yout15),.xout2(xout47),.yout2(yout47));
	butterfly2 a37(.xin1(xtemp5[62]),.yin1(ytemp5[62]),.xin2(xtemp5[63]),.yin2(ytemp5[63]),.xout1(xout31),.yout1(yout31),.xout2(xout63),.yout2(yout63));
	
endmodule