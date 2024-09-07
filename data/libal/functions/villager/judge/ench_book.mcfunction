#For every vanilla enchantments detected, count it as the amount of enchantments on the book (oh my god). 
## Sorted from most important to least.

scoreboard players set enchantments libal.main 0

execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:mending"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:feather_falling"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:efficiency"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:unbreaking"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:silk_touch"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:wind_burst"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:swift_sneak"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:soul_speed"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:sharpness"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:protection"}] run scoreboard players add enchantments libal.main 1

execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:fortune"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:infinity"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:looting"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:sweeping_edge"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:density"}] run scoreboard players add enchantments libal.main 1

execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:breach"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:riptide"}] run scoreboard players add enchantments libal.main 1

execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:smite"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:depth_strider"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:respiration"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:aqua_affinity"}] run scoreboard players add enchantments libal.main 1

execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:impaling"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:loyalty"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:channeling"}] run scoreboard players add enchantments libal.main 1

execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:fire_aspect"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:knockback"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:multishot"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:quick_charge"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:flame"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:power"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:punch"}] run scoreboard players add enchantments libal.main 1

execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:thorns"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:projectile_protection"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:fire_protection"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:blast_protection"}] run scoreboard players add enchantments libal.main 1

execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:piercing"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:luck_of_the_sea"}] run scoreboard players add enchantments libal.main 1

execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:lure"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:frost_walker"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:bane_of_arthropods"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:vanishing_curse"}] run scoreboard players add enchantments libal.main 1
execute if data entity @s ArmorItems[1].tag.StoredEnchantments[{id:"minecraft:binding_curse"}] run scoreboard players add enchantments libal.main 1

#Compensate back in case there was no recognised enchantments
execute if score enchantments libal.main matches 0 run scoreboard players add enchantments libal.main 1

#Proceed to calculate the emerald price of the book
function libal:villager/judge/calculate_price_book