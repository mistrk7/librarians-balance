#Remove Villagers who are tagged and don't have a workstation
execute as @e[type=minecraft:villager,tag=trader] unless predicate libal:has_workstation run function libal:villager/librarian_remove
execute as @e[type=minecraft:villager,tag=trader_travel] unless data entity @s Brain.memories."minecraft:potential_job_site" run function libal:villager/librarian_add with storage libal:main
####