execute if entity @s[type=boat,tag=!FireCannon] run function game:boat/rotate/placeboat/100
execute if entity @s[type=marker,tag=respawnboat] run function game:boat/rotate/placeboat/100
execute if entity @s[type=villager,tag=BoatCannon] run function game:boat/rotate/replacedisplay/100
execute if entity @s[type=boat,tag=FireCannon] run function game:boat/rotate/firecannonball/100
