tp @s[tag=Purple,scores={x=1..}] ~1 ~ ~
tp @s[tag=Orange,scores={x=1..}] ~-1 ~ ~
scoreboard players remove @s x 1
execute at @s[scores={x=1..}] run function game:modifiers/lostcargo/recursivetpx