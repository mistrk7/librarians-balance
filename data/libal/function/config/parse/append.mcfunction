#init macro
execute store result storage libal:macro x int 1 run scoreboard players get #c.str libal.main
function libal:config/parse/append_macro with storage libal:macro

#reset the char count
scoreboard players set #c.str libal.main -1

#append in the map
execute unless data storage libal:macro map.1 run return run data modify storage libal:macro map.1 set from storage libal:macro x
execute unless data storage libal:macro map.2 run return run data modify storage libal:macro map.2 set from storage libal:macro x
execute unless data storage libal:macro map.3 run return run data modify storage libal:macro map.3 set from storage libal:macro x


