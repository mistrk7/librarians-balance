
#Judge blacklist
function libal:interact/judge/blacklist with storage libal:books blacklist

#Judge enchanted book (for info) as villager
$data modify entity @e[limit=1,type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:$(cord)}}}}}] ArmorItems[1] set from entity @s SelectedItem
$execute as @e[limit=1,type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:$(cord)}}}}}] run function libal:interact/judge/level_book 

#If book enchantment isn't recognised, invalidate and tell the player
execute if score book_level libal.main matches 0 run title @p[sort=nearest, limit=1] actionbar {"text":"This book is too complex.","color":"red"}
execute if score book_level libal.main matches 0 run execute positioned ~ ~ ~ run playsound block.chiseled_bookshelf.pickup.enchanted block @a ~ ~ ~ 0.5
execute if score book_level libal.main matches 0 run execute positioned ~ ~ ~ run playsound entity.villager.work_cartographer block @a ~ ~ ~ 0.1

#If book is legal and valid, place book down
execute if score book_illegal libal.main matches 0 unless score book_level libal.main matches 0 run function libal:interact/place_ench_book

#Reset book blacklisting
data remove storage libal:books bookEnch
execute if score book_level libal.main matches 0 run scoreboard players reset book_level libal.main
execute if score book_illegal libal.main matches 1 run scoreboard players reset book_level libal.main
scoreboard players reset book_illegal libal.main
scoreboard players reset book_vanilla libal.main
