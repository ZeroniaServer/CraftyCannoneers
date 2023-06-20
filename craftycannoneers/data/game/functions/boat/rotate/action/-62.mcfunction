execute if entity @s[type=boat,tag=Replace] run function game:boat/rotate/placeboat/-62
execute if entity @s[type=marker,tag=respawnboat] run function game:boat/rotate/placeboat/-62
execute if entity @s[type=area_effect_cloud,tag=BoatCannonOffset] run function game:boat/rotate/replacedisplay/-62
execute if entity @s[type=boat,tag=Shoot] run function game:boat/rotate/firecannonball/-62