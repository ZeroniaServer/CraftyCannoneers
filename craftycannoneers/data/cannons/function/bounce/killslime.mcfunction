scoreboard players operation $temp bounceID = @s bounceID
execute as @e[type=slime,tag=BounceSlime] run function cannons:bounce/killidentify
scoreboard players reset $temp bounceID