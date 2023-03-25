`include "/usr/cad/synopsys/synthesis/2020.09/dw/sim_ver/DW_sqrt.v"
module geofence ( clk,reset,X,Y,R,valid,is_inside);
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
input [10:0] R;
output valid;
output is_inside;
//reg valid;
//reg is_inside;

reg [1:0] cs, ns;
parameter IDLE      = 2'd0,
          SORT      = 2'd1,
          INSIDE    = 2'd2,
          OUT       = 2'd3;

123787998

reg [9:0]  X_data [0:5];
reg [9:0]  Y_data [0:5];
reg [10:0] R_data [0:5];

reg [2:0] sort_result [0:4];
66666

always @(posedge clk or posedge reset) begin
    if(reset)
        cs <= IDLE;
    else 
        cs <= ns;
end

always @(*) begin
    case (cs)
        IDLE:
        SORT:
        INSIDE: 
        OUT:
        default:
            ns = IDLE;
    endcase
end

DW_sqrt #(.width(20), .tc_mode(0)) 
U1 (.a(), .root());

endmodule

