#Filters and decreases the level trade for villagers

scoreboard players set @s libal.main 0
scoreboard players set max_level_number libal.main 3

#This checks and puts each Enchanted Book level back down to a level of 3.

#Slot 0
execute store result score @s libal.main run data get entity @s Offers.Recipes[0].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[0].sell.tag.StoredEnchantments[0].lvl set value 3

#Slot 1
execute store result score @s libal.main run data get entity @s Offers.Recipes[1].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[1].sell.tag.StoredEnchantments[0].lvl set value 3

#Slot 2
execute store result score @s libal.main run data get entity @s Offers.Recipes[2].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[2].sell.tag.StoredEnchantments[0].lvl set value 3

#Slot 3
execute store result score @s libal.main run data get entity @s Offers.Recipes[3].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[3].sell.tag.StoredEnchantments[0].lvl set value 3

#Slot 4
execute store result score @s libal.main run data get entity @s Offers.Recipes[4].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[4].sell.tag.StoredEnchantments[0].lvl set value 3

#Slot 5
execute store result score @s libal.main run data get entity @s Offers.Recipes[5].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[5].sell.tag.StoredEnchantments[0].lvl set value 3

#Slot 6
execute store result score @s libal.main run data get entity @s Offers.Recipes[6].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[6].sell.tag.StoredEnchantments[0].lvl set value 3

#Slot 7
execute store result score @s libal.main run data get entity @s Offers.Recipes[7].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[7].sell.tag.StoredEnchantments[0].lvl set value 3

#Remove data
scoreboard players reset @s libal.main
scoreboard players reset max_level_number libal.main

item replace entity @s armor.legs with air
#data remove storage libal:books slot 
data remove storage libal:books bookEnch 
