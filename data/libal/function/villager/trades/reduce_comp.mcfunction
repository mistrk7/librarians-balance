$item modify entity @s weapon.offhand libal:ench_sell_$(slot)
data modify storage libal:main ench_id.compound set string entity @s HandItems[1].components."minecraft:custom_name" 12 -7
data modify storage libal:books enchant set from storage libal:main ench_id.compound