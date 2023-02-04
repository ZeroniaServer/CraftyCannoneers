team join Collide @s
scoreboard players add @s CmdData 1

execute at @s[scores={CmdData=1}] run tp @s ~ ~-35 ~
data merge entity @s[scores={CmdData=1}] {NoAI:0b,Attributes:[{Name:"generic.attack_damage",Base:6d}]}

execute at @s[scores={CmdData=6..}] run function cannons:bounce/killcheck
execute at @s[scores={CmdData=6},tag=!killed] run tp @s ~ ~35 ~