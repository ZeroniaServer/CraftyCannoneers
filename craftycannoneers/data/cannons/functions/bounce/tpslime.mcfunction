scoreboard players operation $temp bounceID = @s bounceID
execute as @e[type=slime,tag=BounceSlime] run function cannons:bounce/tpidentify
scoreboard players reset $temp bounceID