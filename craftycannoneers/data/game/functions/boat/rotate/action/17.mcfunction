execute if entity @s[type=boat,tag=Replace] run function game:boat/rotate/placeboat/17
execute if entity @s[type=marker,tag=respawnboat] run function game:boat/rotate/placeboat/17
execute if entity @s[type=area_effect_cloud,tag=BoatCannonOffset] run function game:boat/rotate/replacedisplay/17
execute if entity @s[type=boat,tag=Shoot] run function game:boat/rotate/firecannonball/17