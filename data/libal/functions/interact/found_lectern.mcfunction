#ending raycast
scoreboard players set dist= libal.main 0

#running functions based on conditions

## Take Enchanted Book:
execute if predicate libal:lectern_has_book unless predicate libal:has_ench_book run function libal:interact/give_ench_book

#Store blacklisted book data
data modify storage libal:books blacklistB set from storage libal:books blacklist
scoreboard players set illegal libal.main 1
#Check for blacklisted books.
execute if score illegal libal.main matches 1 run execute store success score illegal libal.main run data modify storage libal:books blacklist[0] set from entity @s SelectedItem.tag.StoredEnchantments[].id
execute if score illegal libal.main matches 1 run execute store success score illegal libal.main run data modify storage libal:books blacklist[1] set from entity @s SelectedItem.tag.StoredEnchantments[].id
execute if score illegal libal.main matches 1 run execute store success score illegal libal.main run data modify storage libal:books blacklist[2] set from entity @s SelectedItem.tag.StoredEnchantments[].id
execute if score illegal libal.main matches 1 run execute store success score illegal libal.main run data modify storage libal:books blacklist[3] set from entity @s SelectedItem.tag.StoredEnchantments[].id
#Store success if there was a blacklisted book found.

## Place Enchanted Book
execute if score illegal libal.main matches 1 run execute if predicate libal:has_ench_book unless block ~ ~ ~ minecraft:lectern[has_book=true] run function libal:interact/place_ench_book
data modify storage libal:books blacklist set from storage libal:books blacklistB

#Reset book blacklisting
data remove storage libal:books blacklistB
scoreboard players reset illegal libal.main