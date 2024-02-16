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

#Judge the book to see if it's able to be traded for.
function libal:interact/judge_ench_book