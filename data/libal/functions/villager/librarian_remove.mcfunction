#Remove 'trader' tag to Villager
tag @s remove trader
scoreboard players reset condition libal.main
#say Bye :(

#Play Particles and Sound
execute at @s run particle minecraft:smoke ^ ^1 ^ 0.2 0.2 0.2 0.01 50
#execute at @s run playsound minecraft:entity.villager.trade block @a

#Changes trade table back to the original
execute if data entity @s Offers.Recipes[1].buyB{count:1} run data modify entity @s Offers.Recipes[1].sell.components set from entity @s ArmorItems[0].components."minecraft:custom_data".Storage[0]
execute if data entity @s Offers.Recipes[0].buyB{count:1} run data modify entity @s Offers.Recipes[0].sell.components set from entity @s ArmorItems[0].components."minecraft:custom_data".Storage[0]

#Changes emerald trade back to the original
execute if data entity @s Offers.Recipes[1].buyB{count:1} run data modify entity @s Offers.Recipes[1].buy.count set from entity @s ArmorItems[0].components."minecraft:custom_data".Storage[1].ems
execute if data entity @s Offers.Recipes[0].buyB{count:1} run data modify entity @s Offers.Recipes[0].buy.count set from entity @s ArmorItems[0].components."minecraft:custom_data".Storage[1].ems


#Remove the button item used for data storing
data remove entity @s ArmorItems[0]
