scoreboard players operation #oldv libal.main = #v libal.main

#function libal:settings
#tellraw @a ["",{"text":"[Librarian's Balance]","color":"dark_green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/librarians-balance"},"hoverEvent":{"action":"show_text","contents":"Datapack / Mod"}},{"text":" In this version your settings have been reset. "},{"text":"Reconfigure","color":"aqua","clickEvent":{"action":"run_command","value":"/function libal:config"},"hoverEvent":{"action":"show_text","contents":"/function libal:config"}},{"text":" if you made important changes."}]

# upgrade path
execute as @e[type=villager,tag=trader] run function libal:update/nolevel_stored_enchantments

tellraw @a ["",{"text":"[Librarian's Balance]","color":"dark_green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/librarians-balance"},"hoverEvent":{"action":"show_text","contents":"Datapack / Mod"}},{"text":" has been updated. "}]
