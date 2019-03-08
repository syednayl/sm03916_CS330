#Compiling design modules
vlog tb.v Adder.v Instruction_Fetch.v Instruction_Memory.v Program_Counter.v
#no optimization
vsim -novopt work.tb
#view waves
view wave
#Adding waves
add wave sim:/tb/clk
add wave sim:/tb/reset
add wave sim:/tb/Instructioner
run 2500 ns