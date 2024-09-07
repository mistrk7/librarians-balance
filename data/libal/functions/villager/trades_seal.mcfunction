#Store sealed book data
scoreboard players set isSeal libal.main 0

#Check for sealed books.
execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.tag.StoredEnchantments[{id:"minecraft:soul_speed"}]
execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.tag.StoredEnchantments[{id:"minecraft:swift_sneak"}]
execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.tag.StoredEnchantments[{id:"minecraft:frost_walker"}]
execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.tag.StoredEnchantments[{id:"minecraft:binding_curse"}]
execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.tag.StoredEnchantments[{id:"minecraft:vanishing_curse"}]

#If the book is sealed, 
execute if score isSeal libal.main matches 1 run execute if data entity @s Offers.Recipes[0].buyB{Count:1b} run data modify entity @s Offers.Recipes[0].sell.tag merge value {sealed:True, display:{Lore:['{"text":" Sealed","color":"blue"}']}}
execute if score isSeal libal.main matches 1 run execute if data entity @s Offers.Recipes[1].buyB{Count:1b} run data modify entity @s Offers.Recipes[1].sell.tag merge value {sealed:True, display:{Lore:['{"text":" Sealed","color":"blue"}']}}

#Reset book sealeding
scoreboard players reset isSeal libal.main