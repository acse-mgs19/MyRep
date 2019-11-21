	module regFile (input logic clk, wrEn,
                   input logic [7:0] wData,	
	                input logic [3:0] rAddA, rAddB, wAdd,
						 output logic [7:0] rDataA, rDataB );
	
	  logic [7:0] regFile[0:15];
	  
	  always_comb
	  begin
	  rDataA <= regFile[rAddA];
	  rDataB <= regFile[rAddB];
	  end
	  
     always_ff @ (posedge clk)
	  begin
	  if (wrEn)
	  regFile[wAdd] = wData;
	  end
	
	endmodule	