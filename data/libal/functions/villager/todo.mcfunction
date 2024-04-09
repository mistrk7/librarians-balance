#PSEUDO

#LOAD
#create table of enchantments sorted by level (1 to 5), *5
#data merge storage libal:books {profile:[{},{},{},{},{}]}

#BOOK VALIDATION
#$execute if data storage libal:books profile[0].$(heldbook_level) run scoreboard players set BookLevel libal.main 1

#execute if (levels of list 1) matches into $(heldbook levels) set 1 to score BookLevel 
#execute if (levels of list 2) matches into $(heldbook levels) set 2 to score BookLevel 
#execute if (levels of list 3) matches into $(heldbook levels) set 3 to score BookLevel 
#execute if (levels of list 4) matches into $(heldbook levels) set 4 to score BookLevel 
#execute if (levels of list 5) matches into $(heldbook levels) set 5 to score BookLevel 

#If score BookLevel >1, add it to the lectern.
#If score BookLevel >1, keep results for librarian_add. 
#If score BookLevel =0, disregard and message.


#LIBRARIAN - SAVING THE OLD TRADE

#LIBRARIAN - ADDING THE NEW TRADE
#(move trade from lectern into villager) data modify entity @s Offers.Recipes[$(slot)].sell.components."minecraft:stored_enchantments".levels set from block ~ ~ ~ Book.components."minecraft:stored_enchantments".levels 

#execute if score BookLevel =1, set emerald price to 7
#execute if score BookLevel =2, set emerald price to 12
#execute if score BookLevel =3, set emerald price to 19
#execute if score BookLevel =4, set emerald price to 38
#execute if score BookLevel =5, set emerald price to 48

#execute if lectern book is "minecraft:mending":1 , set emerald price to 52
#execute if lectern book is "minecraft:silk_touch":1 , set emerald price to 38