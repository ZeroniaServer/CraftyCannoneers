effect give @s glowing infinite 100 true

execute if entity @s[scores={modisigns=7853},tag=!mobtesting] run function lobby:customizer/mobtest
execute if entity @s[scores={modisigns=3384},tag=!mobtesting] run function lobby:customizer/mobtest
execute if entity @s[scores={modisigns=5732},tag=!mobtesting] run function lobby:customizer/mobtest
execute if entity @s[scores={modisigns=6497},tag=!mobtesting] run function lobby:customizer/mobtest
execute if entity @s[scores={modisigns=9152},tag=!mobtesting] run function lobby:customizer/mobtest
execute if entity @s[scores={modisigns=9153},tag=!mobtesting] run function lobby:customizer/mobtest
execute if entity @s[scores={modisigns=17863},tag=!mobtesting] run function lobby:customizer/mobtest
execute if entity @s[scores={modisigns=59636},tag=!mobtesting] run function lobby:customizer/mobtest
execute if entity @s[scores={modisigns=71845},tag=!mobtesting] run function lobby:customizer/mobtest
execute if entity @s[scores={modisigns=256652},tag=!mobtesting] run function lobby:customizer/mobtest

scoreboard players add @s moditimer 1
effect clear @s[scores={moditimer=70..}] glowing
tag @s[scores={moditimer=70..}] remove ModiOwner
scoreboard players reset @s[scores={moditimer=70..}] moditimer