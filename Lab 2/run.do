#Compiling design modules
vlog multiplexer.v testbemchmux.v

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Adding waves
add wave sim:/tb/sel
add wave sim:/tb/out
add wave sim:/tb/a
add wave sim:/tb/b

run 1250 ns
