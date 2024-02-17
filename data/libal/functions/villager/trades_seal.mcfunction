#Store sealed book data
data modify storage libal:books sealedB set from storage libal:books sealed
scoreboard players set isSeal libal.main 1

#Check for sealed books.
$execute if score isSeal libal.main matches 1 run execute store success score isSeal libal.main run data modify storage libal:books sealedB[0] set from entity @s Offers.Recipes[$(slot)].sell.tag.StoredEnchantments[0].id
$execute if score isSeal libal.main matches 1 run execute store success score isSeal libal.main run data modify storage libal:books sealedB[1] set from entity @s Offers.Recipes[$(slot)].sell.tag.StoredEnchantments[0].id
$execute if score isSeal libal.main matches 1 run execute store success score isSeal libal.main run data modify storage libal:books sealedB[2] set from entity @s Offers.Recipes[$(slot)].sell.tag.StoredEnchantments[0].id
$execute if score isSeal libal.main matches 1 run execute store success score isSeal libal.main run data modify storage libal:books sealedB[3] set from entity @s Offers.Recipes[$(slot)].sell.tag.StoredEnchantments[0].id
$execute if score isSeal libal.main matches 1 run execute store success score isSeal libal.main run data modify storage libal:books sealedB[4] set from entity @s Offers.Recipes[$(slot)].sell.tag.StoredEnchantments[0].id
$execute if score isSeal libal.main matches 1 run execute store success score isSeal libal.main run data modify storage libal:books sealedB[5] set from entity @s Offers.Recipes[$(slot)].sell.tag.StoredEnchantments[0].id
$execute if score isSeal libal.main matches 1 run execute store success score isSeal libal.main run data modify storage libal:books sealedB[6] set from entity @s Offers.Recipes[$(slot)].sell.tag.StoredEnchantments[0].id
#Store a Zero if there was a sealed book found.

#If the book is sealed, 
$execute if score isSeal libal.main matches 0 run data modify entity @s Offers.Recipes[$(slot)].sell.tag merge value {sealed:True, display:{Lore:['{"text":" Sealed","color":"blue"}']}}

#Reset book sealeding
data remove storage libal:books sealedB
scoreboard players reset isSeal libal.main