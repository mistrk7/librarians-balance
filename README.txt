Hi! Thanks for installing.
Do you want to configure the datapack?

--- Control the things that this datapack modifies by entering these commands in-game (change the number at the end) ---
--- You can also change these permanently in file [data/libal/functions/a_settings.mcfunction] and then running /reload. ---


This command changes whether or not Mending should be removed from default trading. 
1=YES, 0=NO.
	/scoreboard players set no_mending libal.main 1


This command changes whether or not default trades should be capped. 
1=YES, 0=NO.
	/scoreboard players set cap_enchant_level libal.main 1


This command changes the level cap to villager default trades.
CHANGE NUMBER TO YOUR LIKING.
	/scoreboard players set cap_enchant_level libal.main 3

This gives you four slots to exclude enchants from the lectern
EACH COMMAND FOR EACH SLOT. 
	/data modify storage libal:books blacklist[0] set value "minecraft:your_enchant"
	/data modify storage libal:books blacklist[1] set value "minecraft:for_example"
	/data modify storage libal:books blacklist[2] set value "minecraft:soul_speed"
	/data modify storage libal:books blacklist[3] set value "minecraft:swift_sneak"


These settings reset every time the /reload command is entered.

-- Extra Info: This datapack also changes some loot tables to make Mending more common.
-- If this is interferring with something or you don't want this behaviour, you can delete the 'loot_tables' folder.
