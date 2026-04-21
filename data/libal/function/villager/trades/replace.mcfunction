
#These are the trades that the villager will replace. It puts some books from storage (libal:books) in their place.
#To add your own: For each slot, copy the command under itself and change the enchantment to what you want to filter.

# Verbose: just for mending
execute if score no_mending libal.main matches 1 if score verbose_mode libal.main matches 1 if data entity @s Offers.Recipes[0].sell.components."minecraft:stored_enchantments"{"minecraft:mending":1} unless data entity @s Offers.Recipes[0].sell.components."minecraft:custom_data"{traded:1b} run tellraw @p[sort=nearest, limit=1, distance=0..10] ["",{"text":"[Librarian's Balance]:","color":"dark_green","click_event":{"action":"open_url","url":"https://modrinth.com/datapack/librarians-balance"},"hover_event":{"action":"show_text","value":"Datapack / Mod"}},{"text":" Heads up! You can only find Mending in End or Ancient Cities. Place it on a lectern to get the trades."}]
execute if score no_mending libal.main matches 1 if score verbose_mode libal.main matches 1 if data entity @s Offers.Recipes[1].sell.components."minecraft:stored_enchantments"{"minecraft:mending":1} unless data entity @s Offers.Recipes[1].sell.components."minecraft:custom_data"{traded:1b} run tellraw @p[sort=nearest, limit=1, distance=0..10] ["",{"text":"[Librarian's Balance]:","color":"dark_green","click_event":{"action":"open_url","url":"https://modrinth.com/datapack/librarians-balance"},"hover_event":{"action":"show_text","value":"Datapack / Mod"}},{"text":" Heads up! You can only find Mending in End or Ancient Cities. Place it on a lectern to get the trades."}]

#Slot 0
$execute if data entity @s[tag=!trader] Offers.Recipes[0].sell.components."minecraft:stored_enchantments".$(1) run data modify entity @s Offers.Recipes[0].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[0].sell.components."minecraft:stored_enchantments".$(2) run data modify entity @s Offers.Recipes[0].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[0].sell.components."minecraft:stored_enchantments".$(3) run data modify entity @s Offers.Recipes[0].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[0].sell.components."minecraft:stored_enchantments".$(4) run data modify entity @s Offers.Recipes[0].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]

#Slot 1
$execute if data entity @s[tag=!trader] Offers.Recipes[1].sell.components."minecraft:stored_enchantments".$(1) run data modify entity @s Offers.Recipes[1].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[1].sell.components."minecraft:stored_enchantments".$(2) run data modify entity @s Offers.Recipes[1].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[1].sell.components."minecraft:stored_enchantments".$(3) run data modify entity @s Offers.Recipes[1].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[1].sell.components."minecraft:stored_enchantments".$(4) run data modify entity @s Offers.Recipes[1].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]

#Slot 2
$execute if data entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments".$(1) run data modify entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[1]
$execute if data entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments".$(2) run data modify entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[1]
$execute if data entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments".$(3) run data modify entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[1]
$execute if data entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments".$(4) run data modify entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[1]

#Slot 3
$execute if data entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments".$(1) run data modify entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[2]
$execute if data entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments".$(2) run data modify entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[2]
$execute if data entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments".$(3) run data modify entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[2]
$execute if data entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments".$(4) run data modify entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[2]

#Slot 4
$execute if data entity @s OWffers.Recipes[4].sell.components."minecraft:stored_enchantments".$(1) run data modify entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]
$execute if data entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments".$(2) run data modify entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]
$execute if data entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments".$(3) run data modify entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]
$execute if data entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments".$(4) run data modify entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]

#Slot 5
$execute if data entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments".$(1) run data modify entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[1]
$execute if data entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments".$(2) run data modify entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[1]
$execute if data entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments".$(3) run data modify entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[1]
$execute if data entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments".$(4) run data modify entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[1]

#Slot 6
$execute if data entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments".$(1) run data modify entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[2]
$execute if data entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments".$(2) run data modify entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[2]
$execute if data entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments".$(3) run data modify entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[2]
$execute if data entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments".$(4) run data modify entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[2]

#Slot 7
$execute if data entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments".$(1) run data modify entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]
$execute if data entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments".$(2) run data modify entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]
$execute if data entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments".$(3) run data modify entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]
$execute if data entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments".$(4) run data modify entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments" set from storage libal:books replacements[0]