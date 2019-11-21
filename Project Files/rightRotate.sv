module rightRotate(input logic clk, en, arst, rst, 
                   output logic [3:0]r_current);

  logic [3:0] r_next;

  always_comb 
    r_next = {r_current[0], r_current[3:1]};

  always_ff @ (posedge clk, posedge arst)
    if (arst) 
        r_current = 4'b1111;
    else if (rst)
	     r_current = 4'b1000; 
    else if (en)
        r_current <= r_next;

endmodule