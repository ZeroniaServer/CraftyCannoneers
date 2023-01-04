effect give @s glowing 1 100 true

execute if entity @s[scores={modisigns=7853}] run function lobby:customizer/mobtest
execute if entity @s[scores={modisigns=3384}] run function lobby:customizer/mobtest
execute if entity @s[scores={modisigns=5732}] run function lobby:customizer/mobtest
execute if entity @s[scores={modisigns=6497}] run function lobby:customizer/mobtest

scoreboard players add @s moditimer 1
effect clear @s[scores={moditimer=70..}] glowing
execute if entity @s[scores={moditimer=70..}] run tag @s remove ModiOwner
scoreboard players reset @s[scores={moditimer=70..}] moditimer