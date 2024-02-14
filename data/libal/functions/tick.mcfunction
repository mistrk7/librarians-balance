#Remove Villagers who are tagged and don't have a workstation
execute as @e[type=minecraft:villager,tag=trader] unless predicate libal:has_workstation run function libal:villager/librarian_remove
####

execute store result storage libal:main n int 1 run scoreboard players get max_level_number libal.main