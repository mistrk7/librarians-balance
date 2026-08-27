
#save values

## Remove Banned Enchantments? (like mending)
$scoreboard players set no_mending libal.main $(no_mending)

## Enable Sealed Books?
$scoreboard players set sealed_books libal.main $(sealed_books)

## Minimum Enchantment Level
$data merge storage libal:books {level:$(book_level_cap)}

## Verbose Mode
$scoreboard players set verbose_mode libal.main $(verbose_mode)


#parse blacklist and delisted and sealed list
$data merge storage libal:macro {blacklist:"$(book_blacklist)",delisted:"$(delisted_books)",sealed:"$(sealed_list)"}

#blacklist
data modify storage libal:macro str set from storage libal:macro blacklist
data modify storage libal:macro ench_count set value 6
function libal:config/parse/main
data modify storage libal:books blacklist set from storage libal:macro map

#delisted
data modify storage libal:macro str set from storage libal:macro delisted
data modify storage libal:macro ench_count set value 6
function libal:config/parse/main
data modify storage libal:books delisted set from storage libal:macro map

#sealed
data modify storage libal:macro str set from storage libal:macro sealed
data modify storage libal:macro ench_count set value 12
function libal:config/parse/main
data modify storage libal:books sealed set from storage libal:macro map