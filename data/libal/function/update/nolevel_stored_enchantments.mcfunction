# Extract the stored enchantments from the villager's feet equipment
data modify entity @s equipment.feet.components."minecraft:custom_data".Storage[0]."temp" set from entity @s equipment.feet.components."minecraft:custom_data".Storage[0]."minecraft:stored_enchantments"

# Reformat the 'levels' directory into the main bracket
data modify entity @s equipment.feet.components."minecraft:custom_data".Storage[0]."temp2" set from entity @s equipment.feet.components."minecraft:custom_data".Storage[0]."temp".levels

# Merge the reformatted enchantments back into the villager's feet equipment
data modify entity @s equipment.feet.components."minecraft:custom_data".Storage[0]."minecraft:stored_enchantments" set from entity @s equipment.feet.components."minecraft:custom_data".Storage[0]."temp2"

# Clean up the temporary data
data remove entity @s equipment.feet.components."minecraft:custom_data".Storage[0]."temp"
data remove entity @s equipment.feet.components."minecraft:custom_data".Storage[0]."temp2"