
#Check for blacklisted books (vanilla).
$execute if score book_illegal libal.main matches 0 run execute store success score book_illegal libal.main run data get entity @s equipment.legs.components."minecraft:stored_enchantments".levels.$(1)
$execute if score book_illegal libal.main matches 0 run execute store success score book_illegal libal.main run data get entity @s equipment.legs.components."minecraft:stored_enchantments".levels.$(2)
$execute if score book_illegal libal.main matches 0 run execute store success score book_illegal libal.main run data get entity @s equipment.legs.components."minecraft:stored_enchantments".levels.$(3)
$execute if score book_illegal libal.main matches 0 run execute store success score book_illegal libal.main run data get entity @s equipment.legs.components."minecraft:stored_enchantments".levels.$(4)

#If blacklisted, tell the player.
execute if score book_illegal libal.main matches 1 run title @p[sort=nearest, limit=1] actionbar "Librarians refuse to learn that book."
execute if score book_illegal libal.main matches 1 run execute positioned ~ ~ ~ run playsound block.chiseled_bookshelf.pickup.enchanted block @a