#Add 'trader' tag to Villager
tag @s add trader

#Play Particles and Sound
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] at @s run particle minecraft:happy_villager ^ ^1.5 ^ 0.3 0.4 0.3 12 12
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] at @s run playsound entity.villager.work_librarian block @a
execute unless entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] at @s run playsound entity.villager.trade block @a

#Add 'button' item in Villager ArmorItem#0 to store the current Book data
data merge entity @s {ArmorItems:[{id:"minecraft:stone_button",Count:1b,tag:{ Storage:{} }}]}

#Save Villager's book data in button item's 'Storage' tag
execute if predicate libal:ebook_slot1 run data modify entity @s ArmorItems[0].tag.Storage set from entity @s Offers.Recipes[1].sell
execute if predicate libal:ebook_slot0 run data modify entity @s ArmorItems[0].tag.Storage set from entity @s Offers.Recipes[0].sell

#Merge book data from lectern with Villager's book trade
execute if predicate libal:ebook_slot1 run data modify entity @s Offers.Recipes[1].sell set from block ~ ~ ~ Book
execute if predicate libal:ebook_slot0 run data modify entity @s Offers.Recipes[0].sell set from block ~ ~ ~ Book
