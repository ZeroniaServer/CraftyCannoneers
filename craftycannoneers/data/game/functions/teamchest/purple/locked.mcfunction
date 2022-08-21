execute if entity @s[tag=Opened] run playsound block.chest.close master @a ~ ~ ~ 1 0.75
tag @s[tag=Opened] remove Opened

#> Complete lock
execute if entity @s[tag=!PlayedSound] run function game:teamchest/purple/lock

tp @s ~ -60 ~ ~ ~