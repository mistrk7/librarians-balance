#loop

#get first char
data modify storage libal:macro s set string storage libal:macro temp 0 1

#if the char is an backspace, append
execute if data storage libal:macro {s:"\n"} run function libal:config/parse/append

#increment the char count and loop count
scoreboard players add #c.str libal.main 1
scoreboard players add #l.str libal.main 1

#remove the first char
data modify storage libal:macro temp set string storage libal:macro temp 1

#if the loop count is greater than the number of char in the input str break the loop
execute if score #l.str libal.main < #m.str libal.main run return run function libal:config/parse/loop

#if we have done all char, done
data modify storage libal:macro map.4 set from storage libal:macro temp2
