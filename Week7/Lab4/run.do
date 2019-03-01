vlog tbReg.v Registers.v

vsim -novopt work.tbReg
add wave \

{sim:/tb/RS1 } \

{sim:/tb/RS2 } \

{sim:/tb/RD} \

{sim:/tb/clk } \

{sim:/tb/Reset } \

{sim:/tb/RegWrite} \


run 40ns