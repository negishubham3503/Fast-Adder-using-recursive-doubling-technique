`include "rec_doub_cla16bit.v"
module rec_doub_cla16bittb;
reg [15:0] a, b;
wire [15:0] Sum;
wire cout;

cla16bit moda(a, b, Sum, cout);
initial begin
    a = 16'b0000000001010110;
    b = 16'b0000000001011101;
end
initial 
    $monitor("A = %b, B = %b, Sum = %b, cout = %b", a, b, Sum, cout);
endmodule