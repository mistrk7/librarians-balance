
#Check book Lvl (I, II, III, IV, V)
scoreboard players set book_level libal.main 0
$execute if data storage libal:books profile[0].[$(bookEnch)] run scoreboard players set book_level libal.main 1
$execute if data storage libal:books profile[1].[$(bookEnch)] run scoreboard players set book_level libal.main 2
$execute if data storage libal:books profile[2].[$(bookEnch)] run scoreboard players set book_level libal.main 3
$execute if data storage libal:books profile[3].[$(bookEnch)] run scoreboard players set book_level libal.main 4
$execute if data storage libal:books profile[4].[$(bookEnch)] run scoreboard players set book_level libal.main 5