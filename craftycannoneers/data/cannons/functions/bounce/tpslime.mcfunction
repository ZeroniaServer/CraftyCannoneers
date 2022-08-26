scoreboard players operation $temp bounceID = @s bounceID
execute as @e[type=slime,tag=BounceSlime] run function cannons:bounce/tpidentify
execute if score $tp bounceID matches 1 run say tp
scoreboard players reset $temp bounceID