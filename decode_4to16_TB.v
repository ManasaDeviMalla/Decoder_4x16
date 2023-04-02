`timescale 1ns / 1ps

module decode_4to16_TB( );
     reg [3:0]in;
	 reg En;
	 wire [15:0]out;
	 
decoder_4to16 dut1(.d(in),.En(En),.out(out) );

	 initial begin
	 En=0;	 #20;	 En=1;
	 in=3;	 #20;	 in=5;
	 #20;	 in=12;	 #20;
	 $stop;
	 end
endmodule
