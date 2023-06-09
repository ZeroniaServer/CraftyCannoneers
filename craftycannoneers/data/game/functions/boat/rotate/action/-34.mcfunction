execute if entity @s[type=boat,tag=Replace] run function game:boat/rotate/placeboat/-34
execute if entity @s[type=marker,tag=respawnboat] run function game:boat/rotate/placeboat/-34
execute if entity @s[type=villager,tag=BoatCannon] run function game:boat/rotate/replacedisplay/-34
execute if entity @s[type=boat,tag=Shoot] run function game:boat/rotate/firecannonball/-34