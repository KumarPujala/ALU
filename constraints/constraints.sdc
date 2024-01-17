# Your SDC file without clock constraints

# Define the input and output ports
create_clock -period 0.0 [get_ports A] -waveform {0.0 0.5}
create_clock -period 0.0 [get_ports B] -waveform {0.0 0.5}
#set_input_delay -clock [get_clocks] 0.0 [get_ports A]
#set_input_delay -clock [get_clocks] 0.0 [get_ports B]
#set_output_delay -clock [get_clocks] 0.0 [get_ports alu_out]

