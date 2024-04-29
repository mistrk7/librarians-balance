#updating blockstate
execute if block ~ ~ ~ minecraft:lectern[facing=east] run setblock ~ ~ ~ minecraft:lectern[facing=east,has_book=true]
execute if block ~ ~ ~ minecraft:lectern[facing=west] run setblock ~ ~ ~ minecraft:lectern[facing=west,has_book=true]
execute if block ~ ~ ~ minecraft:lectern[facing=north] run setblock ~ ~ ~ minecraft:lectern[facing=north,has_book=true]
execute if block ~ ~ ~ minecraft:lectern[facing=south] run setblock ~ ~ ~ minecraft:lectern[facing=south,has_book=true]

#placing data
data modify block ~ ~ ~ Book set from entity @s SelectedItem
item replace entity @s weapon.mainhand with air

#effects
execute align xyz positioned ~0.5 ~0.5 ~0.5 run playsound minecraft:item.book.put block @a

#Add a librarian for custom trading! Condition = Add a villager
scoreboard players set condition libal.main 1
#If he's far away, start to travel.
$execute positioned ~ ~ ~ as @e[type=villager,sort=nearest,limit=1,distance=1..,nbt={Brain:{memories:{"minecraft:job_site":{value:{pos:$(cord)}}}}}] run scoreboard players set condition libal.main 2
function libal:villager/librarian_find with storage libal:jobs_find

