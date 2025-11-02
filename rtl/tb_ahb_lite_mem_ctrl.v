`timescale 1ns/ 1ps
module tb_ahb_lite_mem_ctrl;
    reg HCLK, HRESETn, HSEL, HWRITE, HREADY;
    reg [1:0] HTRANS;
    reg [31:0] HADDR, HWDATA;
    wire [31:0] HRDATA;
    wire HREADYOUT;
    wire [1:0] HRESP;

    ahb_lite_mem_ctrl dut (
        .HCLK(HCLK), .HRESETn(HRESETn),
        .HSEL(HSEL), .HADDR(HADDR),
        .HTRANS(HTRANS), .HWRITE(HWRITE),
        .HSIZE(3'b010), .HWDATA(HWDATA),
        .HRDATA(HRDATA), .HREADY(HREADY),
        .HREADYOUT(HREADYOUT), .HRESP(HRESP)
    );

    initial begin
        HCLK = 0;
        forever #5 HCLK = ~HCLK;
    end

    initial begin
        HRESETn = 0;
        HSEL = 0; HWRITE = 0; HREADY = 1; HTRANS = 2'b00;
        HADDR = 32'h0; HWDATA = 0;

        #12 HRESETn = 1; // Assert then release reset

        // Write
        #10; HSEL = 1; HWRITE = 1; HTRANS = 2'b10; HADDR = 32'h8; HWDATA = 32'hA5A5A5A5;
        #10; HSEL = 0; HWRITE = 0; HTRANS = 2'b00;

        // Read
        #10; HSEL = 1; HWRITE = 0; HTRANS = 2'b10; HADDR = 32'h8;
        #10; HSEL = 0; HTRANS = 2'b00;

        #20;
        $display("Read Data = %h", HRDATA);

        #20 $finish;
    end
endmodule
