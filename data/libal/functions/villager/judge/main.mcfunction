

#Judge enchanted book (for info) as villager. This ultimately gets the cost_final that the book is valued in emeralds.
data modify entity @s ArmorItems[1] set from block ~ ~ ~ Book
function libal:villager/judge/level_book 

#If book level isn't recognised, invalidate and tell the player
execute if score book_level libal.main matches 0 run title @p[sort=nearest, limit=1] actionbar {"text":"This book is too complex.","color":"red"}
execute if score book_level libal.main matches 0 run execute positioned ~ ~ ~ run playsound block.chiseled_bookshelf.pickup.enchanted block @a ~ ~ ~ 0.5
execute if score book_level libal.main matches 0 run execute positioned ~ ~ ~ run playsound entity.villager.work_cartographer block @a ~ ~ ~ 0.1

#If book is sealed invalidate and tell the player.
execute if data block ~ ~ ~ Book.tag{sealed:1b} run title @p[sort=nearest, limit=1] actionbar ["",{"text":"This book is "},{"text":"Sealed","color":"blue"},{"text":". "},{"selector":"@s"},{"text":" can't read it."}]
execute if data block ~ ~ ~ Book.tag{sealed:1b} positioned ~ ~ ~ run playsound block.chiseled_bookshelf.pickup.enchanted block @a

#If book is legal and valid, add villager. 
execute unless data block ~ ~ ~ Book.tag{sealed:1b} unless score book_level libal.main matches 0 if score condition libal.main matches 1 run function libal:villager/librarian_add

#Reset book blacklisting
scoreboard players reset book_level libal.main
scoreboard players reset book_sealed libal.main
scoreboard players reset book_vanilla libal.main