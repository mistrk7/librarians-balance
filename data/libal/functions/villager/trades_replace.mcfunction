
#These are the trades that the villager will replace. It puts some books from storage (libal:books) in their place.
#To add your own: For each slot, copy the command under itself and change the enchantment to what you want to filter.

#Slot 0
data modify entity @s[tag=!trader] Offers.Recipes[0].sell.components."minecraft:stored_enchantments".levels{"minecraft:mending":1} set from storage libal:books Books[0]

#Slot 1
data modify entity @s[tag=!trader] Offers.Recipes[1].sell.components."minecraft:stored_enchantments".levels{"minecraft:mending":1} set from storage libal:books Books[1]

#Slot 2
data modify entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments".levels{"minecraft:mending":1} set from storage libal:books Books[2]

#Slot 3
data modify entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments".levels{"minecraft:mending":1} set from storage libal:books Books[0]

#Slot 4
data modify entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments".levels{"minecraft:mending":1} set from storage libal:books Books[1]

#Slot 5
data modify entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments".levels{"minecraft:mending":1} set from storage libal:books Books[2]

#Slot 6
data modify entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments".levels{"minecraft:mending":1} set from storage libal:books Books[0]

#Slot 7
data modify entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments".levels{"minecraft:mending":1} set from storage libal:books Books[1]
