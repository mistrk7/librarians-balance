#Store blacklisted book data
data modify storage libal:books blacklistB set from storage libal:books blacklist
scoreboard players set illegal libal.main 1

#Check for blacklisted books.
execute if score illegal libal.main matches 1 run execute store success score illegal libal.main run data modify storage libal:books blacklistB[0] set from block ~ ~ ~ Book.tag.StoredEnchantments[0].id
execute if score illegal libal.main matches 1 run execute store success score illegal libal.main run data modify storage libal:books blacklistB[1] set from block ~ ~ ~ Book.tag.StoredEnchantments[0].id
execute if score illegal libal.main matches 1 run execute store success score illegal libal.main run data modify storage libal:books blacklistB[2] set from block ~ ~ ~ Book.tag.StoredEnchantments[0].id
execute if score illegal libal.main matches 1 run execute store success score illegal libal.main run data modify storage libal:books blacklistB[3] set from block ~ ~ ~ Book.tag.StoredEnchantments[0].id
#Store a Zero if there was a blacklisted book found.

#If the book is legal, add a librarian for custom trading! Condition = Add a villager
execute if score illegal libal.main matches 1 run scoreboard players set condition libal.main 1
execute if score illegal libal.main matches 1 run execute as @e[limit=1,sort=nearest,type=villager,nbt={VillagerData:{profession:"minecraft:librarian"}}] run function libal:villager/librarian_find

#If blacklisted, tell the player.
execute if score illegal libal.main matches 0 run title @p[sort=nearest, limit=1] actionbar "Librarains refuse to learn that book."

#Reset book blacklisting
data remove storage libal:books blacklistB
scoreboard players reset illegal libal.main