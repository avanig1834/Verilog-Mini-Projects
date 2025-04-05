// sequence detector for detecting bits 0-1-1-0
module seq_detect(in,clk,rst,out);
input in, clk, rst;
output reg out;
parameter s0=0, s1=1, s2=2, s3=3;
reg [0:1] ps, ns;
// 
always @(posedge clk or posedge rst)
    if(rst)
        ps<=s0;
    else
      ps<=ns;
always @(ps, in)
    case(ps)
        s0: begin
          out=in?0:0;
          ns=in?s0:s1;
        end
        s1: begin
          out=in?0:0;
          ns=in?s2:s1;
        end
        s2: begin
          out=in?0:0;
          ns=in?s3:s1;
        end
        s3: begin
          out=in?0:1;
          ns=in?s0:s1;
        end
    endcase    
endmodule