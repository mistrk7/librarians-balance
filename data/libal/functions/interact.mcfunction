#revoking advancement
advancement revoke @s only libal:interact

#finding lectern
scoreboard players set dist= libal.main 501
execute anchored eyes run function libal:interact/find_lectern
scoreboard players reset dist=