scoreboard players operation #oldv libal.main = #v libal.main

function libal:settings
#tellraw @a ["",{"text":"[Librarian's Balance]","color":"dark_green","click_event":{"action":"open_url","url":"https://modrinth.com/datapack/librarians-balance"},"hover_event":{"action":"show_text","value":"Datapack / Mod"}},{"text":" In this version your settings have been reset. "},{"text":"Reconfigure","color":"aqua","click_event":{"action":"run_command","command":"/function libal:config"},"hover_event":{"action":"show_text","value":"/function libal:config"}},{"text":" if you made important changes."}]

# upgrade path
execute as @e[type=villager,tag=trader] run function libal:update/nolevel_stored_enchantments

tellraw @a ["",{"text":"[Librarian's Balance]","color":"dark_green","click_event":{"action":"open_url","url":"https://modrinth.com/datapack/librarians-balance"},"hover_event":{"action":"show_text","value":"Datapack / Mod"}},{"text":" has been updated. "}]