#ending raycast
scoreboard players set dist= libal.main 0

#running functions based on conditions

## Take Enchanted Book:
execute if predicate libal:lectern_has_book unless predicate libal:has_ench_book run function libal:interact/give_ench_book

## Judge Enchanted Book (before placing)
execute if score sealed_books libal.main matches 1 unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{sealed:1b}}}}] if predicate libal:has_ench_book unless block ~ ~ ~ minecraft:lectern[has_book=true] run function libal:interact/judge_ench_book with storage libal:books
execute unless score sealed_books libal.main matches 1 if predicate libal:has_ench_book unless block ~ ~ ~ minecraft:lectern[has_book=true] run function libal:interact/judge_ench_book with storage libal:books

# Tell the user
execute if score sealed_books libal.main matches 1 if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{sealed:1b}}}}] run title @p[sort=nearest, limit=1] actionbar "This book is sealed."
execute if score sealed_books libal.main matches 1 if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{sealed:1b}}}}] positioned ~ ~ ~ run playsound block.chiseled_bookshelf.pickup.enchanted block @a
