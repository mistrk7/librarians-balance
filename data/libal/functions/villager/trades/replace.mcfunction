
#These are the trades that the villager will replace. It puts some books from storage (libal:books) in their place.
#To add your own: For each slot, copy the command under itself and change the enchantment to what you want to filter.

#Slot 0
$execute if data entity @s[tag=!trader] Offers.Recipes[0].sell.tag.StoredEnchantments[{id:"$(1)"}] run data modify entity @s Offers.Recipes[0].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[0].sell.tag.StoredEnchantments[{id:"$(2)"}] run data modify entity @s Offers.Recipes[0].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[0].sell.tag.StoredEnchantments[{id:"$(3)"}] run data modify entity @s Offers.Recipes[0].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[0].sell.tag.StoredEnchantments[{id:"$(4)"}] run data modify entity @s Offers.Recipes[0].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]

#Slot 1
$execute if data entity @s[tag=!trader] Offers.Recipes[1].sell.tag.StoredEnchantments[{id:"$(1)"}] run data modify entity @s Offers.Recipes[1].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[1].sell.tag.StoredEnchantments[{id:"$(2)"}] run data modify entity @s Offers.Recipes[1].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[1].sell.tag.StoredEnchantments[{id:"$(3)"}] run data modify entity @s Offers.Recipes[1].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[1].sell.tag.StoredEnchantments[{id:"$(4)"}] run data modify entity @s Offers.Recipes[1].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]

#Slot 2
$execute if data entity @s[tag=!trader] Offers.Recipes[2].sell.tag.StoredEnchantments[{id:"$(1)"}] run data modify entity @s Offers.Recipes[2].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[1]
$execute if data entity @s[tag=!trader] Offers.Recipes[2].sell.tag.StoredEnchantments[{id:"$(2)"}] run data modify entity @s Offers.Recipes[2].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[1]
$execute if data entity @s[tag=!trader] Offers.Recipes[2].sell.tag.StoredEnchantments[{id:"$(3)"}] run data modify entity @s Offers.Recipes[2].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[1]
$execute if data entity @s[tag=!trader] Offers.Recipes[2].sell.tag.StoredEnchantments[{id:"$(4)"}] run data modify entity @s Offers.Recipes[2].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[1]

#Slot 3
$execute if data entity @s[tag=!trader] Offers.Recipes[3].sell.tag.StoredEnchantments[{id:"$(1)"}] run data modify entity @s Offers.Recipes[3].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[2]
$execute if data entity @s[tag=!trader] Offers.Recipes[3].sell.tag.StoredEnchantments[{id:"$(2)"}] run data modify entity @s Offers.Recipes[3].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[2]
$execute if data entity @s[tag=!trader] Offers.Recipes[3].sell.tag.StoredEnchantments[{id:"$(3)"}] run data modify entity @s Offers.Recipes[3].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[2]
$execute if data entity @s[tag=!trader] Offers.Recipes[3].sell.tag.StoredEnchantments[{id:"$(4)"}] run data modify entity @s Offers.Recipes[3].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[2]

#Slot 4
$execute if data entity @s[tag=!trader] Offers.Recipes[4].sell.tag.StoredEnchantments[{id:"$(1)"}] run data modify entity @s Offers.Recipes[4].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[4].sell.tag.StoredEnchantments[{id:"$(2)"}] run data modify entity @s Offers.Recipes[4].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[4].sell.tag.StoredEnchantments[{id:"$(3)"}] run data modify entity @s Offers.Recipes[4].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[4].sell.tag.StoredEnchantments[{id:"$(4)"}] run data modify entity @s Offers.Recipes[4].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]

#Slot 5
$execute if data entity @s[tag=!trader] Offers.Recipes[5].sell.tag.StoredEnchantments[{id:"$(1)"}] run data modify entity @s Offers.Recipes[5].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[1]
$execute if data entity @s[tag=!trader] Offers.Recipes[5].sell.tag.StoredEnchantments[{id:"$(2)"}] run data modify entity @s Offers.Recipes[5].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[1]
$execute if data entity @s[tag=!trader] Offers.Recipes[5].sell.tag.StoredEnchantments[{id:"$(3)"}] run data modify entity @s Offers.Recipes[5].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[1]
$execute if data entity @s[tag=!trader] Offers.Recipes[5].sell.tag.StoredEnchantments[{id:"$(4)"}] run data modify entity @s Offers.Recipes[5].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[1]

#Slot 6
$execute if data entity @s[tag=!trader] Offers.Recipes[6].sell.tag.StoredEnchantments[{id:"$(1)"}] run data modify entity @s Offers.Recipes[6].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[2]
$execute if data entity @s[tag=!trader] Offers.Recipes[6].sell.tag.StoredEnchantments[{id:"$(2)"}] run data modify entity @s Offers.Recipes[6].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[2]
$execute if data entity @s[tag=!trader] Offers.Recipes[6].sell.tag.StoredEnchantments[{id:"$(3)"}] run data modify entity @s Offers.Recipes[6].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[2]
$execute if data entity @s[tag=!trader] Offers.Recipes[6].sell.tag.StoredEnchantments[{id:"$(4)"}] run data modify entity @s Offers.Recipes[6].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[2]

#Slot 7
$execute if data entity @s[tag=!trader] Offers.Recipes[7].sell.tag.StoredEnchantments[{id:"$(1)"}] run data modify entity @s Offers.Recipes[7].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[7].sell.tag.StoredEnchantments[{id:"$(2)"}] run data modify entity @s Offers.Recipes[7].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[7].sell.tag.StoredEnchantments[{id:"$(3)"}] run data modify entity @s Offers.Recipes[7].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[7].sell.tag.StoredEnchantments[{id:"$(4)"}] run data modify entity @s Offers.Recipes[7].sell.tag.StoredEnchantments[0] set from storage libal:books replacements[0]
