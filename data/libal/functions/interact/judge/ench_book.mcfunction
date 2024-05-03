#For every vanilla enchantment detected, count it as the amount of enchantments on the book (oh my god). 
## Sorted from most important to least.

scoreboard players set enchantments libal.main 0

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:mending"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:feather_falling"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:efficiency"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:unbreaking"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:silk_touch"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:wind_burst"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:swift_sneak"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:soul_speed"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:sharpness"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:protection"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:fortune"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:infinity"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:looting"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:sweeping_edge"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:density"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:breach"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:riptide"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:smite"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:depth_strider"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:respiration"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:aqua_affinity"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:impaling"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:loyalty"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:channeling"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:fire_aspect"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:knockback"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:multishot"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:quick_charge"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:flame"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:power"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:punch"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:thorns"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:projectile_protection"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:fire_protection"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:blast_protection"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:piercing"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:luck_of_the_sea"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:lure"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:frost_walker"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:bane_of_arthropods"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:vanishing_curse"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantment:"minecraft:binding_curse"}]] run scoreboard players add enchantments libal.main 1

#Proceed to calculate the emerald price of the book
function libal:interact/judge/calculate_price_book