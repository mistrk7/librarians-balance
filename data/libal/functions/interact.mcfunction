#revoking advancement
advancement revoke @s only libal:interact

#remembering book
data modify storage libal:books bookEnch set from entity @s SelectedItem.components."minecraft:stored_enchantments".levels

#finding lectern
scoreboard players set dist= libal.main 501
execute anchored eyes run function libal:interact/find_lectern
scoreboard players reset dist=