
#Check book Lvl (I, II, III, IV, V)
#Get the highest level book

#Set level to scoreboard
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:1}]] run scoreboard players set book_level libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:2}]] run scoreboard players set book_level libal.main 2
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:3}]] run scoreboard players set book_level libal.main 3
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:4}]] run scoreboard players set book_level libal.main 4
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:5}]] run scoreboard players set book_level libal.main 5

#Extra for modded, unused in vanilla
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:6}]] run scoreboard players set book_level libal.main 6
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:7}]] run scoreboard players set book_level libal.main 7
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:8}]] run scoreboard players set book_level libal.main 8
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:9}]] run scoreboard players set book_level libal.main 9
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:10}]] run scoreboard players set book_level libal.main 10

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:11}]] run scoreboard players set book_level libal.main 11
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:12}]] run scoreboard players set book_level libal.main 12
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:13}]] run scoreboard players set book_level libal.main 13
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:14}]] run scoreboard players set book_level libal.main 14
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:15}]] run scoreboard players set book_level libal.main 15

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:16}]] run scoreboard players set book_level libal.main 16
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:17}]] run scoreboard players set book_level libal.main 17
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:18}]] run scoreboard players set book_level libal.main 18
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:19}]] run scoreboard players set book_level libal.main 19
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:20}]] run scoreboard players set book_level libal.main 20

#Proceed to count the number of enchantments on the book
function libal:interact/judge/ench_book with storage libal:books
