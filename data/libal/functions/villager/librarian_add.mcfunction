#Add 'trader' tag to Villager
tag @s add trader

#Play Particles and Sound
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] at @s run particle minecraft:happy_villager ^ ^1.5 ^ 0.3 0.4 0.3 12 12
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] at @s run playsound entity.villager.work_librarian block @a
execute unless entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] at @s run playsound entity.villager.trade block @a

#Add 'button' item in Villager ArmorItem#0 to store the current Book data
data merge entity @s {ArmorItems:[{id:"minecraft:stone_button",Count:1b,tag:{ Storage:[{},{ems:0}] }}]}

#Save Villager's book data in button item's 'Storage' tag
execute if predicate libal:ebook_slot1 run data modify entity @s ArmorItems[0].tag.Storage[0] set from entity @s Offers.Recipes[1].sell
execute if predicate libal:ebook_slot0 run data modify entity @s ArmorItems[0].tag.Storage[0] set from entity @s Offers.Recipes[0].sell

#Save Villager's emerald data in button item's 'Storage' tag
execute if predicate libal:ebook_slot1 run data modify entity @s ArmorItems[0].tag.Storage[1].ems set from entity @s Offers.Recipes[1].buy.Count
execute if predicate libal:ebook_slot0 run data modify entity @s ArmorItems[0].tag.Storage[1].ems set from entity @s Offers.Recipes[0].buy.Count

#Merge book data from lectern with Villager's book trade
execute if predicate libal:ebook_slot1 run data modify entity @s Offers.Recipes[1].sell set from block ~ ~ ~ Book
execute if predicate libal:ebook_slot0 run data modify entity @s Offers.Recipes[0].sell set from block ~ ~ ~ Book

#Store and compare book level to modify emerald trade
execute store result score booklvl libal.main run data get block ~ ~ ~ Book.tag.StoredEnchantments[0].lvl
execute if predicate libal:ebook_slot1 run execute if score booklvl libal.main matches 4 run data modify entity @s Offers.Recipes[1].buy.Count set value 38s
execute if predicate libal:ebook_slot1 run execute if score booklvl libal.main matches 5 run data modify entity @s Offers.Recipes[1].buy.Count set value 58s
execute if predicate libal:ebook_slot0 run execute if score booklvl libal.main matches 4 run data modify entity @s Offers.Recipes[0].buy.Count set value 34s
execute if predicate libal:ebook_slot0 run execute if score booklvl libal.main matches 5 run data modify entity @s Offers.Recipes[0].buy.Count set value 64s
scoreboard players reset booklvl libal.main

