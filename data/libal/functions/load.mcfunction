#Scoreboard initial
scoreboard objectives add libal.main dummy

#load settings
schedule function libal:settings 8t
scoreboard players set #m libal.main -1

#List of possible enchantments to replace Mending with
data merge storage libal:books {Books:["minecraft:flame","minecraft:multishot","minecraft:silk_touch"]}

#Book storage slot
data merge storage libal:main {slot:1}

#Storage data for finding the villager
data merge storage libal:jobs_find {cord:[0,0,0],vcord:[0,0,0]}