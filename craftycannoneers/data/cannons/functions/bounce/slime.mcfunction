team join Collide @s
scoreboard players add @s CmdData 1

execute at @s[scores={CmdData=1}] run tp @s ~ ~31 ~
execute at @s[scores={CmdData=1}] run data merge entity @s {NoAI:0b,Attributes:[{Name:"generic.attack_damage",Base:10f}]}

data merge entity @s[scores={CmdData=6..}] {Size:0}
tp @s[scores={CmdData=6..}] ~ -500 ~
kill @s[scores={CmdData=6..}]