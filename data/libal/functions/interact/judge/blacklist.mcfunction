
scoreboard players set book_illegal libal.main 0

#Check for blacklisted books.
$execute if score book_illegal libal.main matches 0 run execute store success score book_illegal libal.main run data get entity @s SelectedItem.components.levels.$(1)
$execute if score book_illegal libal.main matches 0 run execute store success score book_illegal libal.main run data get entity @s SelectedItem.components.levels.$(2)
$execute if score book_illegal libal.main matches 0 run execute store success score book_illegal libal.main run data get entity @s SelectedItem.components.levels.$(3)
$execute if score book_illegal libal.main matches 0 run execute store success score book_illegal libal.main run data get entity @s SelectedItem.components.levels.$(4)

#If blacklisted, tell the player.
execute if score book_illegal libal.main matches 1 run title @p[sort=nearest, limit=1] actionbar "Librarians refuse to learn that book."
