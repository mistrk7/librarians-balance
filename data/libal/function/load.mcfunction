#Scoreboard initial
scoreboard objectives add libal.main dummy

#load settings (remove execute condition for debug)
execute unless score #m libal.main matches -1 run schedule function libal:settings 8t

#toggle multiplier
scoreboard players set #m libal.main -1

#List of possible enchantments to replace Mending with
data merge storage libal:books {replacements:[{"minecraft:bane_of_arthropods":1},{"minecraft:smite":1},{"minecraft:loyalty":1}]}

#Storage data for finding the villager
data merge storage libal:jobs_find {cord:[I; 0, 0, 0]}