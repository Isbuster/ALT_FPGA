onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {clk & rst} /i2c_master_all_tb_uvvm/CLK
add wave -noupdate -expand -group {clk & rst} /i2c_master_all_tb_uvvm/RST
add wave -noupdate -expand -group {scl & sda} /i2c_master_all_tb_uvvm/scl
add wave -noupdate -expand -group {scl & sda} /i2c_master_all_tb_uvvm/sda
add wave -noupdate -expand -group {i2c -> reg} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/IDLE
add wave -noupdate -expand -group {i2c -> reg} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/DONE
add wave -noupdate -expand -group {i2c -> reg} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/NO_ACK
add wave -noupdate -expand -group {i2c -> reg} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/RD_BYTE
add wave -noupdate -expand -group {reg -> i2c} -color Magenta /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/WR_BYTE
add wave -noupdate -expand -group {reg -> i2c} -color White /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/WR_N
add wave -noupdate -expand -group {reg -> i2c} -color Blue /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/STOPP_bit
add wave -noupdate -expand -group {reg -> i2c} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/BAUD_RATE
add wave -noupdate -expand -group {reg -> i2c} -color Orange /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/EN
add wave -noupdate -expand -group sbi /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/chipselect
add wave -noupdate -expand -group sbi /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/wr
add wave -noupdate -expand -group sbi /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/rd
add wave -noupdate -expand -group sbi /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/address
add wave -noupdate -expand -group sbi /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/writedata
add wave -noupdate -expand -group sbi /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/readdata
add wave -noupdate -expand -group {i2c states} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master/PHASE
add wave -noupdate -expand -group {i2c states} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master/MODE
add wave -noupdate -expand -group {i2c states} -color Coral /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master/STATE
add wave -noupdate -expand -group {reg states} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master_reg/MODE
add wave -noupdate -expand -group {reg states} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master_reg/STATE
add wave -noupdate -expand -group baud_modes /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master_reg/baud_standard_mode
add wave -noupdate -expand -group baud_modes /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master_reg/baud_fast_mode
add wave -noupdate -expand -group baud_modes /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master_reg/baud_rate_cstm
add wave -noupdate -expand -group baud_modes /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master_reg/baud_rate_now
add wave -noupdate -expand -group {i2c baud} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master/baud_cnt
add wave -noupdate -expand -group {i2c baud} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master/baud_limit
add wave -noupdate -expand -group {i2c baud} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master/baud_done
add wave -noupdate -expand -group {i2c scl & sda} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master/SCL
add wave -noupdate -expand -group {i2c scl & sda} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master/SDA
add wave -noupdate -expand -group {i2c scl & sda} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master/sda_in_sync
add wave -noupdate -expand -group {i2c internal} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master/stopp_internal
add wave -noupdate -expand -group {i2c internal} -color Magenta -radix hexadecimal /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master/w_byte
add wave -noupdate -expand -group {i2c internal} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master/r_byte
add wave -noupdate -expand -group {i2c internal} /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master/ack_n
add wave -noupdate -expand -group fifo -expand /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master_reg/fifo_tfr_cmd
add wave -noupdate -expand -group fifo /i2c_master_all_tb_uvvm/c_I2C_MASTER_ALL/c_i2c_master_reg/fifo_rx_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {202658 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 606
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {202563 ns} {202771 ns}
