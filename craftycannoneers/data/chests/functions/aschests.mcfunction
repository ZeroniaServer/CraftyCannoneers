#> Open
execute if entity @s[tag=!Opened] if data entity @s Items[] run function chests:open

#> Once opened
execute if entity @s[tag=Opened] run function chests:opened

#> Loot loader
execute if entity @s[tag=LoadLoot] run function chests:lootloader

#> Graves
execute if entity @s[tag=grave] run function game:modifiers/graverobbery/asgrave