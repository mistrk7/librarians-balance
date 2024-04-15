######################
#Hi! Thanks for installing Librarian's Balance
######################

#In this page, control the things that this datapack modifies by ONLY changing the number at the end
# 1=Yes, -1=No #

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
data merge storage libal:books {sealed:{1:"minecraft:x",2:"minecraft:soul_speed",3:"minecraft:swift_sneak",4:"minecraft:x",5:"minecraft:frost_walker",6:"minecraft:binding_curse",7:"minecraft:vanishing_curse"}}
# To remove one, rename it to a non-book. You cannot add more than 7.

#Extra Info: This datapack also changed some loot tables to make Mending a little more common.
#If this is interferring with something or you don't want this behaviour, you can delete the 'loot_tables' folder.

## Rebalance detect ##
data merge storage libal:main {rebalance:0}
execute store success storage libal:main rebalance int 1 run locate structure #minecraft:on_plains_village_maps
execute if data storage libal:main {rebalance:1} run scoreboard players set no_mending libal.main -1
execute if data storage libal:main {rebalance:1} run tellraw @a ["",{"text":"[Librarian's Balance] ","color":"dark_green"},{"text":"'No mending' feature has been disabled for compatibility with the 'Villager Rebalance' datapack. "},{"text":"why?","color":"gold","hoverEvent":{"action":"show_text","contents":"Mojang's datapack makes mending exclusive to swamp librarians so I don't want to ruin it."}},{"text":"\n- "},{"text":"To keep this enabled, ","color":"gray"},{"text":"click here","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set no_mending libal.main 1"},"hoverEvent":{"action":"show_text","contents":"keep mending removed from trades"}},{"text":".\n- "},{"text":"You can change this any time in ","color":"gray"},{"text":"options","color":"aqua","clickEvent":{"action":"run_command","value":"/function libal:options"},"hoverEvent":{"action":"show_text","contents":"/function libal:options"}},{"text":"."}]