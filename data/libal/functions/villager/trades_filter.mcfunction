#Filters and decreases the level trade for villagers

scoreboard players set @s libal.main 0

#This checks and puts each Enchanted Book level back down to a level of 3.
# (max_level_number Player on the Scoreboard is the Maximum Enchant level)

#Slot 0
execute store result score @s libal.main run data get entity @s Offers.Recipes[0].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[0].sell.tag.StoredEnchantments[0].lvl set from storage libal:main n

#Slot 1
execute store result score @s libal.main run data get entity @s Offers.Recipes[1].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[1].sell.tag.StoredEnchantments[0].lvl set from storage libal:main n

#Slot 2
execute store result score @s libal.main run data get entity @s Offers.Recipes[2].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[2].sell.tag.StoredEnchantments[0].lvl set from storage libal:main n

#Slot 3
execute store result score @s libal.main run data get entity @s Offers.Recipes[3].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[3].sell.tag.StoredEnchantments[0].lvl set from storage libal:main n

#Slot 4
execute store result score @s libal.main run data get entity @s Offers.Recipes[4].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[4].sell.tag.StoredEnchantments[0].lvl set from storage libal:main n

#Slot 5
execute store result score @s libal.main run data get entity @s Offers.Recipes[5].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[5].sell.tag.StoredEnchantments[0].lvl set from storage libal:main n

#Slot 6
execute store result score @s libal.main run data get entity @s Offers.Recipes[6].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[6].sell.tag.StoredEnchantments[0].lvl set from storage libal:main n

#Slot 7
execute store result score @s libal.main run data get entity @s Offers.Recipes[7].sell.tag.StoredEnchantments[0].lvl 
execute if score @s libal.main >= max_level_number libal.main run data modify entity @s Offers.Recipes[7].sell.tag.StoredEnchantments[0].lvl set from storage libal:main n

#Remove data
scoreboard players reset @s libal.main