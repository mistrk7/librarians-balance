######################
#Hi! Thanks for installing Librarian's Balance
######################

#In this page, control the things that this datapack modifies by ONLY changing the number at the end
# 1=Yes, 0=No #

## Remove Banned Enchantments? (like mending)
scoreboard players set #1 libal.main 1

## Cap the Enchantment level traded by villagers?
scoreboard players set #2 libal.main 1

## Maximum Level Number
scoreboard players set #3 libal.main 3

#Extra Info: This datapack also changed some loot tables to make Mending a little more common.
#If this is interferring with something or you don't want this behaviour, you can delete the 'loot_tables' folder.




##Ignore this
execute store result storage libal:main n int 1 run scoreboard players get #3 libal.main
