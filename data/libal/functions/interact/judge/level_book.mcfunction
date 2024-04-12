
#Check book Lvl (I, II, III, IV, V)

#(scoreboard mirror)
scoreboard players set book_level libal.main 0
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:5}]] run scoreboard players set book_level libal.main 5
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:4}]] run scoreboard players set book_level libal.main 4
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:3}]] run scoreboard players set book_level libal.main 3
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:2}]] run scoreboard players set book_level libal.main 2
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:1}]] run scoreboard players set book_level libal.main 1

#(storage mirror)
data modify storage libal:books level set value 0
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:5}]] run data modify storage libal:books level set value 5
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:4}]] run data modify storage libal:books level set value 4
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:3}]] run data modify storage libal:books level set value 3
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:2}]] run data modify storage libal:books level set value 2
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:1}]] run data modify storage libal:books level set value 1

#Check book enchantment with value got from storage

function libal:interact/judge/ench_book with storage libal:books
