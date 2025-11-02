# ===================================================
# Timing and Design Constraints for AHB-Lite Memory Controller
# ===================================================

# Create main clock (100 MHz = 10 ns period)
create_clock -name HCLK -period 10 [get_ports HCLK]

# Input and output delay assumptions
set_input_delay 1 -clock HCLK [get_ports {HRESETn HSEL HWRITE HREADY HTRANS[] HADDR[] HWDATA[*]}]
set_output_delay 2 -clock HCLK [get_ports {HRDATA[] HREADYOUT HRESP[]}]

# Mark asynchronous reset as false path
set_false_path -from [get_ports HRESETn]

# Protect memory from optimization (behavioral array)
set_dont_touch [get_cells mem*]

# Set typical analysis conditions
set_operating_conditions -analysis_type on_chip_variation
