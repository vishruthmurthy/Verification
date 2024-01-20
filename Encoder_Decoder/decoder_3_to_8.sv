//----------------------------------------------------------------------------
// Title       : 3 to 8 Decoder
// File        : decoder_3_to_8.sv
//----------------------------------------------------------------------------

module decoder_3_to_8(
  input        [2:0] d_i , // Input
  output logic [7:0] y_o   // Output
);

  always_comb begin
    case(d_i)
      3'b000 : y_o = 8'b00000001;
      3'b001 : y_o = 8'b00000010;
      3'b010 : y_o = 8'b00000100;
      3'b011 : y_o = 8'b00001000;
      3'b100 : y_o = 8'b00010000;
      3'b101 : y_o = 8'b00100000;
      3'b110 : y_o = 8'b01000000;
      3'b111 : y_o = 8'b10000000;
      default: y_o = 8'bzzzzzzzz;
    endcase
  end
  
endmodule