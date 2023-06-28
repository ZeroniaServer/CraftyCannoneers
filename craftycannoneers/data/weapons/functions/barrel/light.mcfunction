execute if block ~ ~ ~ #game:barrel_plants run return 0
execute if block ~1 ~ ~ #game:barrel_plants run return 0
execute if block ~-1 ~ ~ #game:barrel_plants run return 0
execute if block ~ ~ ~1 #game:barrel_plants run return 0
execute if block ~ ~ ~-1 #game:barrel_plants run return 0
execute if block ~ ~1 ~ #game:barrel_plants run return 0
execute if block ~ ~-1 ~ #game:barrel_plants run return 0
scoreboard players set $unlit CmdData 0
scoreboard players set $lit CmdData 0
execute if entity @s[scores={eyeclick=..94},tag=!lit] store success score $lit CmdData run fill ~ ~ ~ ~ ~ ~ light[level=14] replace air
execute if score $lit CmdData matches 1 run tag @s add lit
execute if entity @s[scores={eyeclick=95},tag=lit] store success score $unlit CmdData run fill ~ ~ ~ ~ ~ ~ air replace light[level=14]
execute if score $unlit CmdData matches 1 run tag @s remove lit