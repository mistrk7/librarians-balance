
#save values

## Remove Banned Enchantments? (like mending)
$scoreboard players set no_mending libal.main $(no_mending)

## Enable Sealed Books?
$scoreboard players set sealed_books libal.main $(sealed_books)

## Minimum Enchantment Level
$data merge storage libal:books {level:$(book_level_cap)}

## Verbose Mode
$scoreboard players set verbose_mode libal.main $(verbose_mode)


#parse blacklist and delisted
$data merge storage libal:macro {blacklist:"$(book_blacklist)",delisted:"$(delisted_books)"}

data modify storage libal:macro str set from storage libal:macro blacklist
function libal:config/parse/main
data modify storage libal:books blacklist set from storage libal:macro map

data modify storage libal:macro str set from storage libal:macro delisted
function libal:config/parse/main
data modify storage libal:books delisted set from storage libal:macro map

