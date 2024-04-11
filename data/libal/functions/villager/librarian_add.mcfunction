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
#Store a success value of the block's ID matching into the Villager's book ID
$execute store success score same_book libal.main run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments".levels set from block ~ ~ ~ Book.components."minecraft:stored_enchantments".levels

#Compare book ID to modify Emerald trade, unless the value already matches.
$execute unless score same_book libal.main matches 0 run execute if score book_level libal.main matches 1 run data modify entity @s Offers.Recipes[$(slot)].buy.count set value 7s
$execute unless score same_book libal.main matches 0 run execute if score book_level libal.main matches 2 run data modify entity @s Offers.Recipes[$(slot)].buy.count set value 12s
$execute unless score same_book libal.main matches 0 run execute if score book_level libal.main matches 3 run data modify entity @s Offers.Recipes[$(slot)].buy.count set value 19s
$execute unless score same_book libal.main matches 0 run execute if score book_level libal.main matches 4 run data modify entity @s Offers.Recipes[$(slot)].buy.count set value 38s
$execute unless score same_book libal.main matches 0 run execute if score book_level libal.main matches 5 run data modify entity @s Offers.Recipes[$(slot)].buy.count set value 48s

#Merge book data from lectern with Villager's book trade
$data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments".levels set from block ~ ~ ~ Book.components."minecraft:stored_enchantments".levels

#If it's a one-time upgrade, bump their Emerald value.
$execute if data entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments".levels{"minecraft:mending":1} run data modify entity @s Offers.Recipes[$(slot)].buy.count set value 52s

$execute if data entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments".levels{"minecraft:flame":1} run data modify entity @s Offers.Recipes[$(slot)].buy.count set value 48s
$execute if data entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments".levels{"minecraft:channeling":1} run data modify entity @s Offers.Recipes[$(slot)].buy.count set value 48s
$execute if data entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments".levels{"minecraft:aqua_affinity":1} run data modify entity @s Offers.Recipes[$(slot)].buy.count set value 48s

$execute if data entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments".levels{"minecraft:silk_touch":1} run data modify entity @s Offers.Recipes[$(slot)].buy.count set value 38s
$execute if data entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments".levels{"minecraft:infinity":1} run data modify entity @s Offers.Recipes[$(slot)].buy.count set value 38s
$execute if data entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments".levels{"minecraft:multishot":1} run data modify entity @s Offers.Recipes[$(slot)].buy.count set value 38s


## SEALED BOOK LOGIC
execute if score sealed_books libal.main matches 1 run function libal:villager/trades/seal with storage libal:books sealed

# Play Particles & Sound
#Positve
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] unless score same_book libal.main matches 0 at @s run particle minecraft:happy_villager ~ ~1.5 ~ 0.3 0.3 0.3 1 14
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] unless score same_book libal.main matches 0 at @s run playsound entity.villager.work_librarian block @a
#Negative
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] if score same_book libal.main matches 0 at @s run playsound entity.villager.trade block @a
execute unless entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] at @s run playsound entity.villager.trade block @a

scoreboard players reset same_book libal.main
scoreboard players reset book_level libal.main
