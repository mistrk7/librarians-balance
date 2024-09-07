
#Check book Lvl (I, II, III, IV, V)
#Get the highest level book

#Set level to scoreboard
scoreboard players set book_level libal.main 0
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{lvl:1s}] run scoreboard players set book_level libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{lvl:2s}] run scoreboard players set book_level libal.main 2
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{lvl:3s}] run scoreboard players set book_level libal.main 3
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{lvl:4s}] run scoreboard players set book_level libal.main 4
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{lvl:5s}] run scoreboard players set book_level libal.main 5

#Proceed to count the number of enchantments on the book
function libal:interact/judge/ench_book with storage libal:books
