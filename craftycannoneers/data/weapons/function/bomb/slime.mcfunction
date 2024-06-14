team join Collide @s
scoreboard players add @s CmdData 1

tp @s[scores={CmdData=1}] ~ ~31 ~
data merge entity @s[scores={CmdData=1}] {Attributes:[{Name:"generic.attack_damage",Base:4d}]}

execute if score @s CmdData matches 6.. run function weapons:bomb/killslime