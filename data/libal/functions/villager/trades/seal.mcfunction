#Store sealed book data
scoreboard players set isSeal libal.main 0

#Check for sealed books.
$execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.tag.StoredEnchantments[{id:"$(1)"}]
$execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.tag.StoredEnchantments[{id:"$(2)"}]
$execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.tag.StoredEnchantments[{id:"$(3)"}]
$execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.tag.StoredEnchantments[{id:"$(4)"}]
$execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.tag.StoredEnchantments[{id:"$(5)"}]
$execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.tag.StoredEnchantments[{id:"$(6)"}]
$execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.tag.StoredEnchantments[{id:"$(7)"}]

#If the book is sealed, 
execute if score isSeal libal.main matches 1 run execute if data entity @s Offers.Recipes[0].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[0].sell.tag merge value {sealed:True, display:{Lore:['{"text":" Sealed","color":"blue"}']}}
execute if score isSeal libal.main matches 1 run execute if data entity @s Offers.Recipes[1].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[1].sell.tag merge value {sealed:True, display:{Lore:['{"text":" Sealed","color":"blue"}']}}

#Reset book sealeding
scoreboard players reset isSeal libal.main