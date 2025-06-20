
#Filters and decreases the level trade for villagers
#This checks and puts each Enchanted Book level back down to a level of 3.
execute store result score booklvl libal.main run data get storage libal:books level
data merge entity @s[tag=!trader] {equipment:{legs:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:efficiency":5}}}}}

#Slot 0
data modify entity @s[tag=!trader] equipment.legs set from entity @s Offers.Recipes[0].sell
data modify storage libal:books slot set value 0
$execute if items entity @s[tag=!trader] armor.legs *[minecraft:stored_enchantments~[{levels:{min:$(level)}}]] run function libal:villager/trades/reduce_set with storage libal:books

#Slot 1
data modify entity @s[tag=!trader] equipment.legs set from entity @s Offers.Recipes[1].sell
data modify storage libal:books slot set value 1
$execute if items entity @s[tag=!trader] armor.legs *[minecraft:stored_enchantments~[{levels:{min:$(level)}}]] run function libal:villager/trades/reduce_set with storage libal:books

#Slot 2
data modify entity @s equipment.legs set from entity @s Offers.Recipes[2].sell
data modify storage libal:books slot set value 2
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:{min:$(level)}}]] run function libal:villager/trades/reduce_set with storage libal:books

#Slot 3
data modify entity @s equipment.legs set from entity @s Offers.Recipes[3].sell
data modify storage libal:books slot set value 3
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:{min:$(level)}}]] run function libal:villager/trades/reduce_set with storage libal:books

#Slot 4
data modify entity @s equipment.legs set from entity @s Offers.Recipes[4].sell
data modify storage libal:books slot set value 4
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:{min:$(level)}}]] run function libal:villager/trades/reduce_set with storage libal:books

#Slot 5
data modify entity @s equipment.legs set from entity @s Offers.Recipes[5].sell
data modify storage libal:books slot set value 5
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:{min:$(level)}}]] run function libal:villager/trades/reduce_set with storage libal:books

#Slot 6
data modify entity @s equipment.legs set from entity @s Offers.Recipes[6].sell
data modify storage libal:books slot set value 6
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:{min:$(level)}}]] run function libal:villager/trades/reduce_set with storage libal:books

#Slot 7
data modify entity @s equipment.legs set from entity @s Offers.Recipes[7].sell
data modify storage libal:books slot set value 7
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:{min:$(level)}}]] run function libal:villager/trades/reduce_set with storage libal:books

#Remove data
scoreboard players reset @s libal.main
scoreboard players reset booklvl libal.main
item replace entity @s armor.legs with air
#data remove storage libal:books slot 
data remove storage libal:books bookEnch 
