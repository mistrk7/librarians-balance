#Remove Villagers who are tagged and don't have a workstation
execute as @e[type=minecraft:villager,tag=trader] unless predicate libal:has_workstation run function libal:villager/librarian_remove
schedule function libal:loop 8t