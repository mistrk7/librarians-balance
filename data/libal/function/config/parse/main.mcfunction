#init
data modify storage libal:macro temp set from storage libal:macro str
data modify storage libal:macro temp2 set from storage libal:macro str
data modify storage libal:macro map set value {}
execute store result score #m.str libal.main run data get storage libal:macro temp
scoreboard players set #c.str libal.main 0
scoreboard players set #l.str libal.main 0
function libal:config/parse/loop

