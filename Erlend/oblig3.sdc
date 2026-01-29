##Definer ns som tidseining
set_time_format -unit ns -decimal_places 3

#Definer CLOCK_50 som systemklokke
create_clock -name {sysclk50} -period 20.000 -waveform {0.000 10.000} [get_ports {CLOCK_50}]
derive_clock_uncertainty

#set opp 10 ns delay til og frå EX_IO[0..1]
# dette er portar for SDA og SCL,sikrar at det ikkje blir unødvendig delayforskjell mellom desse.
set_input_delay -max 10ns -clock sysclk50 [get_ports EX_IO*]
set_output_delay -max 10ns -clock sysclk50 [get_ports EX_IO*]

#Set falsepath på inn og utgangar som ikkje er tidskritiske
set_false_path -to [get_ports HEX*]
set_false_path -to [get_ports LEDR*]
set_false_path -to [get_ports altera_reserved_tdo]
set_false_path -from [get_ports SW*]
set_false_path -from [get_ports KEY*]
set_false_path -from [get_ports altera_reserved_tdi]
set_false_path -from [get_ports altera_reserved_tms]

#set opp 10 ns delay til og frå EX_IO[0..1]
# dette er portar for SDA og SCL,sikrar at det ikkje blir unødvendig delayforskjell mellom desse.
set_input_delay -max 10ns -clock sysclk50 [get_ports EX_IO*]
set_output_delay -max 10ns -clock sysclk50 [get_ports EX_IO*]


