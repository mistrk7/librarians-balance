#ending raycast
scoreboard players set dist= libal.main 0

#running functions based on conditions

## Take Enchanted Book:
execute if predicate libal:lectern_has_book unless predicate libal:has_ench_book run function libal:interact/give_ench_book

## Place Enchanted Book
execute if predicate libal:has_ench_book unless block ~ ~ ~ minecraft:lectern[has_book=true] run function libal:interact/place_ench_book