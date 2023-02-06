#Revoke the advancement of which it is triggered from
advancement revoke @s only libal:interact_villager

#executes to filtering the trades
execute if score #2 libal.main matches 1 run execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian"}},tag=!trader] run function libal:villager/trades_filter
execute if score #1 libal.main matches 1 run execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:librarian"}}] run function libal:villager/trades_replace