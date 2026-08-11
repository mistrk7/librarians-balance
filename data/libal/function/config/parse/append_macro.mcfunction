#get the id and modify string for next id
$data modify storage libal:macro x set string storage libal:macro temp2 0 $(x)
$data modify storage libal:macro temp2 set string storage libal:macro temp2 $(x)
data modify storage libal:macro temp2 set string storage libal:macro temp2 1


