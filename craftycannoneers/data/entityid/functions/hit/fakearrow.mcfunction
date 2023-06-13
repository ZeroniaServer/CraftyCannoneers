damage @s[type=player] 10.4 arrow by @a[tag=hitter,limit=1]
execute at @s[type=player] run playsound entity.arrow.hit_player player @a[tag=hitter,limit=1] ~ ~ ~ 0.2 0.5
execute at @s[type=player] run playsound entity.arrow.hit master @a[tag=hitter,limit=1] ~ ~ ~ 0.25 1
execute at @s[type=player] run kill @e[type=arrow,limit=1,sort=nearest]