`timescale 1ns/1ps
`include "fifo.v"

module fifo_tb;
reg clk, Rst, EN, RD, WR;
reg [31:0]dataIn;

wire EMPTY, FULL;
wire [31:0]dataOut;

// can be instantiated
//  FIFObuffer uut (.Clk(Clk), .dataIn(dataIn), .RD(RD), .WR(WR), .EN(EN), .dataOut(dataOut), .Rst(Rst), .EMPTY(EMPTY), .FULL(FULL));
fifo uut(Clk, dataIn, RD, WR, EN, dataOut, Rst, EMPTY, FULL);

initial begin
  $dumpfile("fifo.vcd");
  $dumpvars(0, fifo_tb);
  $monitor("clk=%b, Rst=%b, EN=%b, RD=%b, WR=%b, datain=%h", clk, Rst, EN, RD, WR, dataIn);
  clk = 1'b0;
  RD = 1'b0;
  WR = 1'b0;
  Rst = 1'b1;
  EN = 1'b0;
  dataIn = 32'h0;
// wait for 100 seconds
#100;

EN = 1'b1;
Rst = 1'b1;

#20;
Rst = 1'b0;
WR = 1'b1;
dataIn = 32'h0;

#20;
dataIn = 32'h1;

#20; 
dataIn = 32'h2;

#20;
dataIn = 32'h3;

#20; 
dataIn = 32'h4;

#20;
WR = 1'b0;
RD = 1'b1;

#500 $finish;
end

always #10 clk = ~clk;
endmodule


