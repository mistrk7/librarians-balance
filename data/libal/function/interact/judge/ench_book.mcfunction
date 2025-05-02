#count the amount of enchantments on the book
## Sorted from most important to least.

scoreboard players set enchantments libal.main 0

#count the amount of enchantments on the book
execute store result score enchantments libal.main run data get entity @s equipment.legs.components."minecraft:stored_enchantments"

#Compensate back in case there was no recognised enchantments
execute if score enchantments libal.main matches 0 run scoreboard players add enchantments libal.main 1

#Proceed to calculate the emerald price of the book
function libal:interact/judge/calculate_price_book