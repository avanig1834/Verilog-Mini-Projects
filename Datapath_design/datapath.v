module datapath(eqz, lda, ldb, ldp, decb, clrp,  DataIn, clk);
input [15:0]DataIn;
input lda, ldb, ldp, clrp, decb, clk;
output eqz;
wire [15:0] A, B, C, Bout, bus;

// a, b, p are the registers in which data is stored
PIPO1 a(A, bus, lda, clk);
PIPO p(B, C, ldp, clrp, clk);
CNTR b(Bout, bus, ldb, decb, clk);
ADD ad(C, A, B);
EQZ eq(eqz, Bout);
endmodule

// module for register A
module PIPO1(dout, din, ld, clk);
input [15:0] din;
input ld, clk;
output reg [15:0] dout;
always @ (posedge clk)
    if (ld) dout <= din;
endmodule

// module for register B
module CNTR(dout, din, ld, dec, clk);
input [15:0]din;
input ld, dec, clk;
output reg [15:0]dout;
always @(posedge clk)
    if(ld) dout <= din;
    else if (dec) dout <= dout - 1; // order can be changed in 'if' block
endmodule

// module for register P
module PIPO(dout, din, ld, clr, clk);
input [15:0] din;
input ld, clr, clk;
output reg [15:0] dout;
always @(posedge clk)
    if(clr) dout <= 16'b0;
    else if (ld) dout <= din;
endmodule

// module for adder block
module ADD(out, in1, in2);
input [15:0] in1, in2;
output reg [15:0]out;
always @(*)
    out = in1 + in2;
endmodule

// module for comparator
module EQZ(eqz, data);
input [15:0]data;
output eqz;
assign eqz = (data == 0);
// assign eqz = ~|data;
endmodule

// module for controller
module controller(lda, ldb, ldp, clrp, decb, done, clk, eqz, start);
input clk, eqz, start;
output reg lda, ldb, ldp, clrp, decb, done;
reg [2:0] state = s0;

parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011, s4 = 3'b100;
always @(posedge clk)
    begin
      case (state)
        s0: if (start) state <= s1;
        s1: state <= s2;
        s2: state <= s3;
        s3: #2 if(eqz) state <= s4;
        s4: state <= s4;
        default: state <= s0;
      endcase
    end
always @(state)
    begin
      case (state)
        s0: begin #1 lda=0; ldb=0; ldp=0; clrp=0; decb=0; end 
        s1: begin #1 lda=1; end
        s2: begin #1 lda=0; ldb=1; clrp=1; end
        s3: begin #1 ldb=0; ldp=1; clrp=0; decb=1; end
        s4: begin #1 done=1; ldb=0; ldp=0; decb=0; end
      default: begin #1 lda=0; ldb=0; ldp=0; clrp=0; decb=0; end
      endcase
    end
endmodule


// testbench module 
module controller_tb;
reg [15:0] DataIn;
reg clk, start;
wire done, eqz;
wire lda, ldb, ldp, clrp, decb;

datapath DP(eqz, lda, ldb, ldp, decb, clrp, DataIn, clk);
controller CON(lda, ldb, ldp, clrp, decb, done, clk, eqz, start);

initial begin
  clk = 1'b0;
  #3 start = 1'b1;
  #500 $finish;
end

always #5 clk = ~clk;

initial begin
  #10 DataIn = 17;
  #10 DataIn = 5;
end

initial begin
  $monitor($time, "%d %b", DP.B, done);
  $dumpfile("controller.vcd");
  $dumpvars(0, controller_tb);
end
endmodule