team join Collide @s
scoreboard players add @s CmdData 1

execute at @s[scores={CmdData=1}] run tp @s ~ ~-35 ~
execute at @s[scores={CmdData=1}] run data merge entity @s {NoAI:0b,Attributes:[{Name:"generic.attack_damage",Base:6f}]}

execute at @s[scores={CmdData=6}] run tp @s ~ ~35 ~

function cannons:bounce/killcheck