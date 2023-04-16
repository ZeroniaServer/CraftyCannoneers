tp @s[tag=Purple,scores={z=1..}] ~ ~ ~1
tp @s[tag=Orange,scores={z=1..}] ~ ~ ~-1
scoreboard players remove @s z 1
execute at @s[scores={z=1..}] run function game:modifiers/lostcargo/recursivetpz