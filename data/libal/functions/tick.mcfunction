#Remove Villagers who are tagged and don't have a workstation
execute as @e[type=minecraft:villager,tag=trader] unless predicate libal:has_workstation run function libal:villager/librarian_remove
#Play sound for villager who finds the book on a lectern
execute as @e[type=minecraft:villager,tag=trader_travel] unless predicate libal:travelling at @s run playsound entity.villager.work_librarian block @a
execute as @e[type=minecraft:villager,tag=trader_travel] unless predicate libal:travelling run tag @s remove trader_travel