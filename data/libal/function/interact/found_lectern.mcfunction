#ending raycast
scoreboard players set dist= libal.main 0

#check modded? (Tome Reader)
execute if data block ~ ~ ~ {TomeReader:1b} run scoreboard players set #tomereader libal.main 1 
execute unless data block ~ ~ ~ {TomeReader:1b} run scoreboard players set #tomereader libal.main 0 

# Save lectern location
data modify storage libal:jobs_find cord[0] set from block ~ ~ ~ x
data modify storage libal:jobs_find cord[1] set from block ~ ~ ~ y
data modify storage libal:jobs_find cord[2] set from block ~ ~ ~ z


## Take Enchanted Book:
execute if predicate libal:lectern_has_book unless predicate libal:has_ench_book run function libal:interact/give_ench_book

## Go to Judge Enchanted Book
execute if predicate libal:has_ench_book unless block ~ ~ ~ minecraft:lectern[has_book=true] run function libal:interact/judge/main with storage libal:jobs_find