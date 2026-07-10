//==============================================================
// Control and Status Registers
//==============================================================

module csr_registers(

input clk,
input reset,

input csr_write,

input [11:0] csr_addr,

input [31:0] csr_wdata,

output reg [31:0] csr_rdata

);

reg [31:0] csr_file [0:15];

integer i;

always @(posedge clk or posedge reset)
begin

if(reset)

begin

for(i=0;i<16;i=i+1)

csr_file[i] <= 32'd0;

end

else if(csr_write)

csr_file[csr_addr[3:0]] <= csr_wdata;

end

always @(*)

begin

csr_rdata = csr_file[csr_addr[3:0]];

end

endmodule
