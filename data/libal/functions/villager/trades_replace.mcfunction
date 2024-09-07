
#These are the trades that the villager will replace. It puts some books from storage (libal:books) in their place.
#To add your own: For each slot, copy the command under itself and change the enchantment to what you want to filter.

#Slot 0
execute as @s[tag=!trader,nbt={Offers:{Recipes:[{sell:{tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}},{},{},{},{},{},{},{},{}]}}] run data modify entity @s Offers.Recipes[0].sell.tag.StoredEnchantments[0].id set from storage libal:books Books[0]

#Slot 1
execute as @s[tag=!trader,nbt={Offers:{Recipes:[{},{sell:{tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}},{},{},{},{},{},{},{}]}}] run data modify entity @s Offers.Recipes[1].sell.tag.StoredEnchantments[0].id set from storage libal:books Books[1]

#Slot 2
execute as @s[nbt={Offers:{Recipes:[{},{},{sell:{tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}},{},{},{},{},{},{}]}}] run data modify entity @s Offers.Recipes[2].sell.tag.StoredEnchantments[0].id set from storage libal:books Books[1]

#Slot 3
execute as @s[nbt={Offers:{Recipes:[{},{},{},{sell:{tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}},{},{},{},{},{}]}}] run data modify entity @s Offers.Recipes[3].sell.tag.StoredEnchantments[0].id set from storage libal:books Books[2]

#Slot 4
execute as @s[nbt={Offers:{Recipes:[{},{},{},{},{sell:{tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}},{},{},{},{}]}}] run data modify entity @s Offers.Recipes[4].sell.tag.StoredEnchantments[0].id set from storage libal:books Books[0]

#Slot 5
execute as @s[nbt={Offers:{Recipes:[{},{},{},{},{},{sell:{tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}},{},{},{}]}}] run data modify entity @s Offers.Recipes[5].sell.tag.StoredEnchantments[0].id set from storage libal:books Books[1]

#Slot 6
execute as @s[nbt={Offers:{Recipes:[{},{},{},{},{},{},{sell:{tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}},{},{}]}}] run data modify entity @s Offers.Recipes[6].sell.tag.StoredEnchantments[0].id set from storage libal:books Books[2]

#Slot 7
execute as @s[nbt={Offers:{Recipes:[{},{},{},{},{},{},{},{sell:{tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}},{}]}}] run data modify entity @s Offers.Recipes[7].sell.tag.StoredEnchantments[0].id set from storage libal:books Books[0]
