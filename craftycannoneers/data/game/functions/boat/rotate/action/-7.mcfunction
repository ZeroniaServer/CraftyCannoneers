execute if entity @s[type=boat,tag=DismountCheck,tag=!Sinking] run function game:boat/rotate/placeboat/-7
execute if entity @s[type=marker,tag=respawnboat] run function game:boat/rotate/placeboat/-7
execute if entity @s[type=villager,tag=BoatCannon] run function game:boat/rotate/replacedisplay/-7
execute if entity @s[type=boat,tag=FireCannon] run function game:boat/rotate/firecannonball/-7
