`timescale 1ns/ 1ps
module ahb_lite_mem_ctrl(
    input  wire        HCLK,
    input  wire        HRESETn,
    input  wire        HSEL,
    input  wire [31:0] HADDR,
    input  wire [1:0]  HTRANS,
    input  wire        HWRITE,
    input  wire [2:0]  HSIZE,
    input  wire [31:0] HWDATA,
    output reg  [31:0] HRDATA,
    input  wire        HREADY,
    output reg         HREADYOUT,
    output wire [1:0]  HRESP
);

    assign HRESP = 2'b00; // Always OKAY

    reg [31:0] mem [0:255];

    reg [31:0] addr_reg;

    always @(posedge HCLK or negedge HRESETn) begin
        if (!HRESETn) begin
            HRDATA    <= 32'b0;
            HREADYOUT <= 1'b1;
            addr_reg  <= 32'b0;
        end else begin
            if(HREADY && HSEL && HTRANS[1]) begin
                addr_reg <= HADDR;
                if(HWRITE) begin
                    mem[HADDR[9:2]] <= HWDATA;
                    HREADYOUT <= 1'b1;
                end else begin
                    HRDATA <= mem[HADDR[9:2]];
                    HREADYOUT <= 1'b1;
                end
            end else begin
                // Remain ready
                HREADYOUT <= 1'b1;
            end
        end
    end

endmodule
