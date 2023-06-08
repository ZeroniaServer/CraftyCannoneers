execute if entity @s[type=boat,tag=!FireCannon] run function game:boat/rotate/placeboat/-9
execute if entity @s[type=marker,tag=respawnboat] run function game:boat/rotate/placeboat/-9
execute if entity @s[type=villager,tag=BoatCannon] run function game:boat/rotate/replacedisplay/-9
execute if entity @s[type=boat,tag=FireCannon] run function game:boat/rotate/firecannonball/-9
