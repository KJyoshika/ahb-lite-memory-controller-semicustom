# ==============================================================
# Genus Synthesis Script for AHB-Lite Memory Controller (digital_jyo)
# ==============================================================

# Set library search path to your working directory
set_db init_lib_search_path /home/iiitdmk/digital_jyo/

set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib/

# Specify your standard cell library (replace with actual filename)
set_db library slow.lib

# Read RTL
read_hdl {/home/iiitdmk/digital_jyo/ahb_lite_mem_ctrl.v}

# Elaborate design
elaborate

# Read constraints if present
read_sdc /home/iiitdmk/digital_jyo/constraints_input.sdc

# Set synthesis effort
set_db syn_generic_effort medium
set_db syn_map_effort     medium
set_db syn_opt_effort     medium
`		
# Synthesis steps
syn_generic
syn_map
syn_opt

# Write netlist and constraints
write_hdl > /home/iiitdmk/digital_jyo/ahb_lite_mem_ctrl_netlist.v
write_sdc > /home/iiitdmk/digital_jyo/ahb_lite_mem_ctrl_output.sdc

# Generate reports
report timing > /home/iiitdmk/digital_jyo/ahb_lite_mem_ctrl_timing.rpt
report power  > /home/iiitdmk/digital_jyo/ahb_lite_mem_ctrl_power.rpt
report area   > /home/iiitdmk/digital_jyo/ahb_lite_mem_ctrl_area.rpt
report gates  > /home/iiitdmk/digital_jyo/ahb_lite_mem_ctrl_gates.rpt

# Optionally open GUI for schematic view
gui_show
