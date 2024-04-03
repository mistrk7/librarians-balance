#Add 'trader' tag to Villager
tag @s add trader
scoreboard players reset condition libal.main

#Add 'button' item in Villager ArmorItem#0 to store the current Book data
data merge entity @s {ArmorItems:[{id:"minecraft:stone_button",components:{"minecraft:custom_data":{Storage:[{},{ems:0}]}}}]}


## SAVING THE OLD TRADE ##
#Save Villager's book data in button item's 'Storage' tag
$data modify entity @s ArmorItems[0].components."minecraft:custom_data".Storage[0] set from entity @s Offers.Recipes[$(slot)].sell

#Save Villager's emerald data in button item's 'Storage' tag
$data modify entity @s ArmorItems[0].components."minecraft:custom_data".Storage[1].ems set from entity @s Offers.Recipes[$(slot)].buy.count


## ADDING THE NEW TRADE ##
#Store a success value of the Villager's book ID matching into the block's ID
$execute store success score booklevel libal.main run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments".levels set from block ~ ~ ~ Book.components."minecraft:stored_enchantments".levels

#Compare book ID to modify Emerald trade, unless the value already matches.
$execute unless score booklevel libal.main matches 0 run execute if data entity @s Offers.Recipes[$(slot)].sell.tag.StoredEnchantments[{lvl:1s}] run data modify entity @s Offers.Recipes[$(slot)].buy.count set value 7s
$execute unless score booklevel libal.main matches 0 run execute if data entity @s Offers.Recipes[$(slot)].sell.tag.StoredEnchantments[{lvl:2s}] run data modify entity @s Offers.Recipes[$(slot)].buy.count set value 12s
$execute unless score booklevel libal.main matches 0 run execute if data entity @s Offers.Recipes[$(slot)].sell.tag.StoredEnchantments[{lvl:3s}] run data modify entity @s Offers.Recipes[$(slot)].buy.count set value 19s

#If you put the villagers own book on his table in an attempt to get a cheaper trade, "he will remember that". Easter egg; you found me :p.
#execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] if score booklevel libal.main matches 0 run title @p[sort=nearest, limit=1] actionbar ["",{"selector":"@s"},{"text":" will remember that."}]
$execute if data entity @s Offers.Recipes[$(slot)].sell.tag.StoredEnchantments[{lvl:4s}] run data modify entity @s Offers.Recipes[1].buy.Count set value 38s
$execute if data entity @s Offers.Recipes[$(slot)].sell.tag.StoredEnchantments[{lvl:5s}] run data modify entity @s Offers.Recipes[1].buy.Count set value 48s

#Merge book data from lectern with Villager's book trade
$data modify entity @s Offers.Recipes[$(slot)].sell.tag.StoredEnchantments[0] set from block ~ ~ ~ Book.tag.StoredEnchantments[0]

#If either Mending or Silk Touch, bump their Emerald value.
$execute if data entity @s Offers.Recipes[$(slot)].sell.tag.StoredEnchantments[{id:"minecraft:mending"}] run data modify entity @s Offers.Recipes[$(slot)].buy.Count set value 52s
$execute if data entity @s Offers.Recipes[$(slot)].sell.tag.StoredEnchantments[{id:"minecraft:silk_touch"}] run data modify entity @s Offers.Recipes[$(slot)].buy.Count set value 38s

## SEALED BOOK LOGIC
execute if score sealed_books libal.main matches 1 run function libal:villager/trades_seal with storage libal:main

# Play Particles & Sound
#Positve
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] unless score booklevel libal.main matches 0 at @s run particle minecraft:happy_villager ~ ~1.5 ~ 0.3 0.3 0.3 1 14
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] unless score booklevel libal.main matches 0 at @s run playsound entity.villager.work_librarian block @a
#Negative
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] if score booklevel libal.main matches 0 at @s run playsound entity.villager.trade block @a
execute unless entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] at @s run playsound entity.villager.trade block @a

scoreboard players reset booklevel libal.main
