#revoking advancement
advancement revoke @s only libal:cured_zombie

execute as @e[tag=!trader,nbt={Offers:{Recipes:[{sell:{tag:{traded: 1b}}}]}}] run execute if data entity @s Offers.Recipes[1].buyB{Count:1b} run data modify entity @s Offers.Recipes[1].sell set value {Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{lvl:1s, id:"minecraft:bane_of_arthropods"}]}}
execute as @e[tag=!trader,nbt={Offers:{Recipes:[{sell:{tag:{traded: 1b}}}]}}] run execute if data entity @s Offers.Recipes[0].buyB{Count:1b} run data modify entity @s Offers.Recipes[0].sell set value {Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{lvl:1s, id:"minecraft:blast_protection"}]}}


