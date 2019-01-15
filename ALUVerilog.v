module ALU_32_Bit(a, b, select, Result);
      input [31:0] a;
      input [31:0] b;
      input [1:0] select;
      output [31:0]Result;
      reg [31:0] Result;

      always@(a or b or select)
          begin
               case (select)
                  2'b00:  Result = a & b;   // AND
                  2'b01:  Result = a  |   b;   // OR
                  2'b10:  Result = a +  b;    // addition or // subtraction
                  2'b11:  Result = a - b;
               endcase
           end

endmodule 