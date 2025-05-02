#Scoreboard initial
scoreboard objectives add libal.main dummy

#update logic (remove execute condition for debug)
scoreboard players operation #oldv libal.main = #v libal.main
scoreboard players set #v libal.main 37

execute if score #oldv libal.main < #v libal.main run schedule function libal:update 1s

#toggle multiplier
scoreboard players set #m libal.main -1

#List of possible enchantments to replace Mending with
data merge storage libal:books {replacements:[{"minecraft:bane_of_arthropods":1},{"minecraft:smite":1},{"minecraft:loyalty":1}]}

#Storage data for finding the villager
data merge storage libal:jobs_find {cord:[I; 0, 0, 0]}