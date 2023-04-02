`timescale 1ns / 1ps

module decoder_2to4(d,En,y);
input [1:0]d;
input En;
output reg [3:0]y;

always@(d or En)
begin
if(En)
case(d)
2'b00:y=4'b0001;
2'b01:y=4'b0010;
2'b10:y=4'b0100;
2'b11:y=4'b1000;
endcase
else
y=4'b0000;
end
endmodule
