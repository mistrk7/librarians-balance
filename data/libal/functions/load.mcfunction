#Scoreboard initial
scoreboard objectives add libal.main dummy

#load settings (remove execute condition for debug)
execute unless score #m libal.main matches -1 run schedule function libal:settings 8t

#toggle multiplier
scoreboard players set #m libal.main -1

#List of possible enchantments to replace Mending with
data merge storage libal:books {replacements:[{"minecraft:bane_of_arthropods":1},{"minecraft:smite":1},{"minecraft:loyalty":1}]}

#List of enchantments sorted by level (unused)
data merge storage libal:books {profile:[\
[{"minecraft:aqua_affinity":1},{"minecraft:bane_of_arthropods":1},{"minecraft:blast_protection":1},{"minecraft:channeling":1},{"minecraft:binding_curse":1},{"minecraft:vanishing_curse":1},{"minecraft:depth_strider":1},{"minecraft:efficiency":1},{"minecraft:feather_falling":1},{"minecraft:fire_aspect":1},{"minecraft:fire_protection":1},{"minecraft:flame":1},{"minecraft:fortune":1},{"minecraft:frost_walker":1},{"minecraft:impaling":1},{"minecraft:infinity":1},{"minecraft:knockback":1},{"minecraft:looting":1},{"minecraft:loyalty":1},{"minecraft:luck_of_the_sea":1},{"minecraft:lure":1},{"minecraft:mending":1},{"minecraft:multishot":1},{"minecraft:piercing":1},{"minecraft:power":1},{"minecraft:projectile_protection":1},{"minecraft:protection":1},{"minecraft:punch":1},{"minecraft:quick_charge":1},{"minecraft:respiration":1},{"minecraft:riptide":1},{"minecraft:sharpness":1},{"minecraft:silk_touch":1},{"minecraft:smite":1},{"minecraft:soul_speed":1},{"minecraft:sweeping_edge":1},{"minecraft:swift_sneak":1},{"minecraft:thorns":1},{"minecraft:unbreaking":1},{"minecraft:density":1},{"minecraft:breach":1},{"minecraft:wind_burst":1}]\
,[{"minecraft:bane_of_arthropods":2},{"minecraft:blast_protection":2},{"minecraft:depth_strider":2},{"minecraft:efficiency":2},{"minecraft:feather_falling":2},{"minecraft:fire_aspect":2},{"minecraft:fire_protection":2},{"minecraft:fortune":2},{"minecraft:frost_walker":2},{"minecraft:impaling":2},{"minecraft:knockback":2},{"minecraft:looting":2},{"minecraft:loyalty":2},{"minecraft:luck_of_the_sea":2},{"minecraft:lure":2},{"minecraft:piercing":2},{"minecraft:power":2},{"minecraft:projectile_protection":2},{"minecraft:protection":2},{"minecraft:punch":2},{"minecraft:quick_charge":2},{"minecraft:respiration":2},{"minecraft:riptide":2},{"minecraft:sharpness":2},{"minecraft:smite":2},{"minecraft:soul_speed":2},{"minecraft:sweeping_edge":2},{"minecraft:swift_sneak":2},{"minecraft:thorns":2},{"minecraft:unbreaking":2},{"minecraft:density":2},{"minecraft:breach":2},{"minecraft:wind_burst":2}]\
,[{"minecraft:bane_of_arthropods":3},{"minecraft:blast_protection":3},{"minecraft:depth_strider":3},{"minecraft:efficiency":3},{"minecraft:feather_falling":3},{"minecraft:fire_protection":3},{"minecraft:fortune":3},{"minecraft:impaling":3},{"minecraft:looting":3},{"minecraft:loyalty":3},{"minecraft:luck_of_the_sea":3},{"minecraft:lure":3},{"minecraft:piercing":3},{"minecraft:power":3},{"minecraft:projectile_protection":3},{"minecraft:protection":3},{"minecraft:quick_charge":3},{"minecraft:respiration":3},{"minecraft:riptide":3},{"minecraft:sharpness":3},{"minecraft:smite":3},{"minecraft:soul_speed":3},{"minecraft:sweeping_edge":3},{"minecraft:swift_sneak":3},{"minecraft:thorns":3},{"minecraft:unbreaking":3},{"minecraft:density":3},{"minecraft:breach":3},{"minecraft:wind_burst":3}]\
,[{"minecraft:bane_of_arthropods":4},{"minecraft:blast_protection":4},{"minecraft:efficiency":4},{"minecraft:feather_falling":4},{"minecraft:fire_protection":4},{"minecraft:impaling":4},{"minecraft:piercing":4},{"minecraft:power":4},{"minecraft:projectile_protection":4},{"minecraft:protection":4},{"minecraft:sharpness":4},{"minecraft:smite":4},{"minecraft:density":4},{"minecraft:breach":4},{"minecraft:wind_burst":4}]\
,[{"minecraft:bane_of_arthropods":5},{"minecraft:efficiency":5},{"minecraft:impaling":5},{"minecraft:power":5},{"minecraft:sharpness":5},{"minecraft:smite":5},{"minecraft:density":5},{"minecraft:breach":5},{"minecraft:wind_burst":5}]\
]}
#Book storage slot
data merge storage libal:main {slot:1}

#Storage data for finding the villager
data merge storage libal:jobs_find {cord:[I; 0, 0, 0],vcord:[I; 0, 0, 0]}