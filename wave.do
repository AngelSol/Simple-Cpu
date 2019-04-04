onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clk
add wave -noupdate /testbench/reset
add wave -noupdate /testbench/inext
add wave -noupdate /testbench/dataoutf
add wave -noupdate /testbench/ramin
add wave -noupdate /testbench/IR
add wave -noupdate -radix unsigned /testbench/ramaddress
add wave -noupdate /testbench/memWr
add wave -noupdate /testbench/RFwr
add wave -noupdate /testbench/succuss
add wave -noupdate -radix unsigned /testbench/cpusim/datunit/PCout
add wave -noupdate /testbench/cpusim/conunit/cycle
add wave -noupdate /testbench/cpusim/apos
add wave -noupdate /testbench/cpusim/Aeq0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 205
configure wave -valuecolwidth 39
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
WaveRestoreZoom {0 ps} {419 ps}
