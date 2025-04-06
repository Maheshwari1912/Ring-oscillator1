module ring_ocillator(output reg osc_out);
  reg [4:0] stages;
  initial begin
    stages=5'b00001;
    osc_out=0;
  end
  always begin
    #5 stages[0] = ~stages[4];
    #5 stages[1] = ~stages[0];
    #5 stages[2] = ~stages[1];
    #5 stages[3] = ~stages[2];
    #5 stages[4] = ~stages[3];
    osc_out = stages[4];
  end
endmodule
