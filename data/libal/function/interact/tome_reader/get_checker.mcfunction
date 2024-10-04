execute unless entity @e[type=minecraft:item_display, tag=checkerlb] run summon minecraft:item_display ~ ~ ~ {Tags:["checkerlb"]}
tp @e[type=minecraft:item_display, tag=checkerlb] ~ ~ ~
execute as @e[type=minecraft:item_display, tag=checkerlb] run function libal:interact/tome_reader/checker