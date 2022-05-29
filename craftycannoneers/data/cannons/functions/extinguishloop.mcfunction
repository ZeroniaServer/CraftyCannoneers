execute at @s store result score @s CalcAir2 run fill ~200 ~ ~ ~ ~ ~100 air replace fire
execute at @s run fill ~200 ~ ~ ~ ~ ~100 air replace fire
execute if entity @s[tag=Purple,scores={CalcAir2=1..}] run scoreboard players operation $DamagePurple CmdData += @s CalcAir2
execute if entity @s[tag=Orange,scores={CalcAir2=1..}] run scoreboard players operation $DamageOrange CmdData += @s CalcAir2
scoreboard players reset @s CalcAir2
execute at @s run tp @s ~ ~1 ~
scoreboard players add @s CmdData 1

execute unless entity @s[scores={CmdData=50..}] at @s run function cannons:extinguishloop
kill @s[scores={CmdData=50..}]