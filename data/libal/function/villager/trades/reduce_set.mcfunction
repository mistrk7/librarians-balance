#I hate this less now

$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:bane_of_arthropods"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:bane_of_arthropods":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:density"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:density":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:efficiency"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:efficiency":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:impaling"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:impaling":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:power"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:power":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:sharpness"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:sharpness":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:smite"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:smite":$(level)}

execute if score booklvl libal.main matches 5 run return fail

$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:blast_protection"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:blast_protection":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:breach"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:breach":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:feather_falling"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:feather_falling":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:fire_protection"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:fire_protection":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:piercing"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:piercing":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:projectile_protection"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:projectile_protection":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:protection"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:protection":$(level)}

execute if score booklvl libal.main matches 4 run return fail

$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:depth_strider"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:depth_strider":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:fortune"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:fortune":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:looting"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:looting":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:loyalty"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:loyalty":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:luck_of_the_sea"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:luck_of_the_sea":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:lure"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:lure":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:quick_charge"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:quick_charge":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:respiration"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:respiration":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:riptide"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:riptide":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:soul_speed"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:soul_speed":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:sweeping_edge"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:sweeping_edge":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:swift_sneak"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:swift_sneak":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:unbreaking"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:unbreaking":$(level)}

execute if score booklvl libal.main matches 3 run return fail

$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:fire_aspect"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:fire_aspect":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:frost_walker"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:frost_walker":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:knockback"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:knockback":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:punch"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:punch":$(level)}

execute if score booklvl libal.main matches 2 run return fail

$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:aqua_affinity"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:aqua_affinity":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:channeling"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:channeling":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:binding_curse"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:binding_curse":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:vanishing_curse"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:vanishing_curse":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:flame"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:flame":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:infinity"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:infinity":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:multishot"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:multishot":$(level)}
$execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:silk_touch"}]] run data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments" set value {"minecraft:silk_touch":$(level)}