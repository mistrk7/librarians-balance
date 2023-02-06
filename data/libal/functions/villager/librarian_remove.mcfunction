#Remove 'trader' tag to Villager
tag @s remove trader
#say Bye :(

#Play Particles and Sound
execute at @s run particle minecraft:smoke ^ ^1 ^ 0.2 0.2 0.2 0.01 50
#execute at @s run playsound minecraft:entity.villager.trade block @a

#Changes trade table back to the original
execute if predicate libal:ebook_slot1 run data modify entity @s Offers.Recipes[1].sell set from entity @s ArmorItems[0].tag.Storage
execute if predicate libal:ebook_slot0 run data modify entity @s Offers.Recipes[0].sell set from entity @s ArmorItems[0].tag.Storage

#Remove the button item used for data storing
data remove entity @s ArmorItems[0]