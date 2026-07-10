//==============================================================
// Hazard Detection Unit
//==============================================================

module hazard_detection_unit(

input memRead,

input [4:0] id_ex_rd,

input [4:0] if_id_rs1,
input [4:0] if_id_rs2,

output reg stall

);

always @(*)
begin

    if(memRead &&
      ((id_ex_rd==if_id_rs1) ||
       (id_ex_rd==if_id_rs2)))

        stall = 1'b1;

    else

        stall = 1'b0;

end

endmodule
