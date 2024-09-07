#Add 'trader' tag to Villager
tag @s add trader

#Play Particles and Sound
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] at @s run particle minecraft:happy_villager ^ ^1.5 ^ 0.3 0.3 0.3 1 14
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] at @s run playsound entity.villager.work_librarian block @a
execute unless entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] at @s run playsound entity.villager.trade block @a

#Add 'button' item in Villager ArmorItem#0 to store the current Book data
data modify entity @s ArmorItems[0] set value {Count:1b,id:"minecraft:stone_button",tag:{Storage:[{},{ems:0,priceMultiplier:0}]}}

#Save Villager's book data in button item's 'Storage' tag
execute if data entity @s Offers.Recipes[1].buyB{Count:1b} run data modify entity @s ArmorItems[0].tag.Storage[0] set from entity @s Offers.Recipes[1].sell
execute if data entity @s Offers.Recipes[0].buyB{Count:1b} run data modify entity @s ArmorItems[0].tag.Storage[0] set from entity @s Offers.Recipes[0].sell


## SAVING THE OLD TRADE ##
#Save Villager's book data in button item's 'Storage' tag
execute if data entity @s Offers.Recipes[1].buyB{Count:1b} run data modify entity @s ArmorItems[0].tag.Storage[0] set from entity @s Offers.Recipes[1].sell.tag
execute if data entity @s Offers.Recipes[0].buyB{Count:1b} run data modify entity @s ArmorItems[0].tag.Storage[0] set from entity @s Offers.Recipes[0].sell.tag
#Save Villager's emerald data in button item's 'Storage' tag
execute if data entity @s Offers.Recipes[1].buyB{Count:1b} run data modify entity @s ArmorItems[0].tag.Storage[1].ems set from entity @s Offers.Recipes[1].buy.Count
execute if data entity @s Offers.Recipes[0].buyB{Count:1b} run data modify entity @s ArmorItems[0].tag.Storage[1].ems set from entity @s Offers.Recipes[0].buy.Count
#Save Villager's price multiplier in button item's 'Storage' tag
execute if data entity @s Offers.Recipes[1].buyB{Count:1b} run data modify entity @s ArmorItems[0].tag.Storage[1].priceMultiplier set from entity @s Offers.Recipes[1].priceMultiplier
execute if data entity @s Offers.Recipes[0].buyB{Count:1b} run data modify entity @s ArmorItems[0].tag.Storage[1].priceMultiplier set from entity @s Offers.Recipes[0].priceMultiplier


## ADDING THE NEW TRADE ##
#Store a success value when the Villager's book in memory (legs armour slot) merges into the Villager's Book trade
execute if data entity @s Offers.Recipes[1].buyB{Count:1b} store success score same_book libal.main run execute if data entity @s Offers.Recipes[1].buyB{Count:1b} run data modify entity @s Offers.Recipes[1].sell.tag set from entity @s ArmorItems[1].tag
execute if data entity @s Offers.Recipes[0].buyB{Count:1b} store success score same_book libal.main run execute if data entity @s Offers.Recipes[0].buyB{Count:1b} run data modify entity @s Offers.Recipes[0].sell.tag set from entity @s ArmorItems[1].tag

#Mark the book as traded
execute if data entity @s Offers.Recipes[1].buyB{Count:1b} if data entity @s Offers.Recipes[1].buyB{Count:1b} run data modify entity @s Offers.Recipes[1].sell.tag merge value {traded:True}
execute if data entity @s Offers.Recipes[0].buyB{Count:1b} if data entity @s Offers.Recipes[0].buyB{Count:1b} run data modify entity @s Offers.Recipes[0].sell.tag merge value {traded:True}

#Set the trade to the books emerald value, unless the book already matches.
execute if data entity @s Offers.Recipes[1].buyB{Count:1b} unless score same_book libal.main matches 0 if data entity @s Offers.Recipes[1].buyB{Count:1b} run data modify entity @s Offers.Recipes[1].buy.Count set from storage libal:books cost_final
execute if data entity @s Offers.Recipes[0].buyB{Count:1b} unless score same_book libal.main matches 0 if data entity @s Offers.Recipes[0].buyB{Count:1b} run data modify entity @s Offers.Recipes[0].buy.Count set from storage libal:books cost_final

execute if data entity @s Offers.Recipes[1].buyB{Count:1b} unless score same_book libal.main matches 0 if data storage libal:books {cost_blocks:True} if data entity @s Offers.Recipes[1].buyB{Count:1b} run data modify entity @s Offers.Recipes[1].buy.id set value "minecraft:emerald_block"
execute if data entity @s Offers.Recipes[0].buyB{Count:1b} unless score same_book libal.main matches 0 if data storage libal:books {cost_blocks:True} if data entity @s Offers.Recipes[0].buyB{Count:1b} run data modify entity @s Offers.Recipes[0].buy.id set value "minecraft:emerald_block"

#Set price multiplier to zero if it costs blocks
execute if data entity @s Offers.Recipes[1].buyB{Count:1b} unless score same_book libal.main matches 0 if data storage libal:books {cost_blocks:True} if data entity @s Offers.Recipes[1].buyB{Count:1b} run data modify entity @s Offers.Recipes[1].priceMultiplier set value 0
execute if data entity @s Offers.Recipes[0].buyB{Count:1b} unless score same_book libal.main matches 0 if data storage libal:books {cost_blocks:True} if data entity @s Offers.Recipes[0].buyB{Count:1b} run data modify entity @s Offers.Recipes[0].priceMultiplier set value 0
scoreboard players reset same_book libal.main

## SEALED BOOK LOGIC
function libal:villager/trades_seal