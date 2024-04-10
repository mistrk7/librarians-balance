
#Judge blacklist
function libal:interact/judge/blacklist with storage libal:books blacklist

#Check book Lvl (I, II, III, IV, V)
scoreboard players set book_level libal.main 0
$execute if data storage libal:books profile[0].[$(bookEnch)] run scoreboard players set book_level libal.main 1
$execute if data storage libal:books profile[1].[$(bookEnch)] run scoreboard players set book_level libal.main 2
$execute if data storage libal:books profile[2].[$(bookEnch)] run scoreboard players set book_level libal.main 3
$execute if data storage libal:books profile[3].[$(bookEnch)] run scoreboard players set book_level libal.main 4
$execute if data storage libal:books profile[4].[$(bookEnch)] run scoreboard players set book_level libal.main 5

#If book doesn't match, invalidate and tell the player
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

