#RUNNING AS CYCLED VILLAGER

##LOOP

#Set up values for finding workstation owner (doesn't need to loop tbh, does anyway)
data modify storage libal:jobs_find cord[0] set from block ~ ~ ~ x
data modify storage libal:jobs_find cord[1] set from block ~ ~ ~ y
data modify storage libal:jobs_find cord[2] set from block ~ ~ ~ z

#Put the job site the villager has into storage
data modify storage libal:jobs_find vcord[0] set from entity @s Brain.memories."minecraft:job_site".value.pos[0]
data modify storage libal:jobs_find vcord[1] set from entity @s Brain.memories."minecraft:job_site".value.pos[1]
data modify storage libal:jobs_find vcord[2] set from entity @s Brain.memories."minecraft:job_site".value.pos[2]

#Store a success value of the Villager's job site matching into the block's 
execute store success score different libal.main run data modify storage libal:jobs_find vcord set from storage libal:jobs_find cord 

#If the values are same, proceed and reset.
execute if score different libal.main matches 0 run execute if score condition libal.main matches 0 run function libal:villager/librarian_remove
execute if score different libal.main matches 0 run execute if score condition libal.main matches 1 run function libal:villager/librarian_add
execute if score different libal.main matches 0 run execute as @e[type=villager,tag=checked,nbt={VillagerData:{profession:"minecraft:librarian"}}] run tag @s remove checked
execute if score different libal.main matches 0 run scoreboard players reset different libal.main
execute if score different libal.main matches 0 run scoreboard players reset condition libal.main

#However if the values are different, add the checked tag, then LOOP as the next villager
execute if score different libal.main matches 1 run tag @s add checked
execute if score different libal.main matches 1 run execute as @e[limit=1,tag=!checked,sort=nearest,type=villager,nbt={VillagerData:{profession:"minecraft:librarian"}}] run function libal:villager/librarian_find

#If there's no longer any villagers to search for, reset.
execute if score different libal.main matches 1 run execute unless entity @e[tag=!checked,type=villager,nbt={VillagerData:{profession:"minecraft:librarian"}}] run execute as @e[type=villager] run tag @s remove checked
scoreboard players reset different libal.main


##<LOOP