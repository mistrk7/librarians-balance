#decrementing distance value
scoreboard players remove dist= libal.main 1

#checking for lectern
execute if block ~ ~ ~ minecraft:lectern run function libal:interact/found_lectern

#looping raycast
execute if score dist= libal.main matches 1.. positioned ^ ^ ^0.01 run function libal:interact/find_lectern