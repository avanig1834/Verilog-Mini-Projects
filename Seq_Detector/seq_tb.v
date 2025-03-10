`timescale 1ns/1ns
`include "seq.v"

module seq_tb;
reg in, clk, rst;
wire out;

seq_detect uut(.in(in), .clk(clk), .rst(rst), .out(out));
initial begin
    $dumpfile("seq.vvp");
    $dumpvars(0, seq_tb);
    clk = 1'b0;
    rst = 1'b1;
    #15 rst = 1'b0;
end
always #5 clk = ~clk;
initial begin
  #12 in = 0; #10 in = 0; #10 in = 1; #10 in = 1; 
  #12 in = 0; #10 in = 1; #10 in = 1; #10 in = 0; 
  #12 in = 0; #10 in = 1; #10 in = 1; #10 in = 0; 
  #10 $finish;
end
endmodule;



