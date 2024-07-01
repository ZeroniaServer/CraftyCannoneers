team join Collide @s
scoreboard players add @s CmdData 1

tp @s[scores={CmdData=1}] ~ ~31 ~
data merge entity @s[scores={CmdData=1}] {attributes:[{id:"minecraft:generic.attack_damage",base:4d}]}

execute if score @s CmdData matches 6.. run function weapons:bomb/killslime