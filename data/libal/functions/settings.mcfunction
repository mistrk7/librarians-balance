######################
#Hi! Thanks for installing Librarian's Balance
######################

#In this page, control the things that this datapack modifies by ONLY changing the number at the end
# 1=Yes, 0=No #

#You can control these values by executing them as commands in-game (/function libal:options)

## Remove Banned Enchantments? (like mending)
scoreboard players set no_mending libal.main 1

## Cap the Enchantment level traded by villagers?
scoreboard players set cap_enchant_level libal.main 1

## Enable Sealed Books?
scoreboard players set sealed_books libal.main 1

## Book Blacklist (Enchants exculded from the lectern. Add up to four by replacing the "x" with enchant name: ex. silk_touch)
data merge storage libal:books {blacklist:{1:"minecraft:x",2:"minecraft:x",3:"minecraft:x",4:"minecraft:x"}}

## Sealed Books (List of books that cannot be replicated)
data merge storage libal:books {sealed:{1:"minecraft:mending",2:"minecraft:soul_speed",3:"minecraft:swift_sneak",4:"minecraft:x",5:"minecraft:frost_walker",6:"minecraft:binding_curse",7:"minecraft:vanishing_curse"}}
# To remove one, rename it to a non-book. You cannot add more than 7.

#Extra Info: This datapack also changed some loot tables to make Mending a little more common.
#If this is interferring with something or you don't want this behaviour, you can delete the 'loot_tables' folder.

## Rebalance detect ##
data merge storage libal:main {rebalance:0}
execute store success storage libal:main rebalance int 1 run locate structure #minecraft:on_plains_village_maps
execute if data storage libal:main {rebalance:1} run scoreboard players set no_mending libal.main 0
#execute if data storage libal:main {rebalance:1} run tellraw @a ["",{"text":"[Librarian's Balance]:","color":"dark_green"},{"text":" You're using Mojang's "},{"text":"Villager Rebalance","color":"red"},{"text":" datapack, so I've allowed "},{"text":"Villagers to trade for Mending again.","color":"yellow"},{"text":" To turn this back off, please click & run "},{"text":"/scoreboard players set no_mending libal.main 1","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set no_mending libal.main 1"}}]
