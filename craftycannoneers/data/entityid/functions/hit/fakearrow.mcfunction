damage @s 10.4 arrow by @a[tag=hitter,limit=1]
playsound entity.arrow.hit_player player @a[tag=hitter,limit=1] ~ ~ ~ 0.2 0.5
playsound entity.arrow.hit master @a[tag=hitter,limit=1] ~ ~ ~ 0.25 1
kill @e[type=arrow,limit=1,sort=nearest]