$item modify entity @s weapon.offhand libal:ench_sell_$(slot)
data modify storage libal:main ench_id.compound set from entity @s equipment.offhand.components."minecraft:custom_name".extra
data modify storage libal:books enchant set from storage libal:main ench_id.compound[2].extra[0].text