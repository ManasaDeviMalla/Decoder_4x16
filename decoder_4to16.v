`timescale 1ns / 1ps

module decoder_4to16(
    input [3:0]d,
	 input En,
	 output[15:0]out
    );
	 wire [3:0]y;
	 decoder_2to4 d1(d[3:2],En,y[3:0]);
	 decoder_2to4 d2(d[1:0],y[0],out[3:0]);
	 decoder_2to4 d3(d[1:0],y[1],out[7:4]);
	 decoder_2to4 d4(d[1:0],y[2],out[11:8]);
	 decoder_2to4 d5(d[1:0],y[3],out[15:12]);
endmodule
