module clkDev ( input logic clk,
               output logic divClk);

  logic [32:0] q;
  
  assign divClk = (q > 9999999) ? 1'b1 : 1'b0;

  always_ff @ (posedge clk)
    begin	
      q <= (q > 19999999) ? 0 : q+1'b1;
    end


endmodule 