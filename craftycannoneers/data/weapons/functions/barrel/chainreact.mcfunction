tag @s add IgniteBarrel
execute if entity @s[distance=..7] run scoreboard players set $dist CmdData 7
execute if entity @s[distance=..6] run scoreboard players set $dist CmdData 6
execute if entity @s[distance=..5] run scoreboard players set $dist CmdData 5
execute if entity @s[distance=..4] run scoreboard players set $dist CmdData 4
execute if entity @s[distance=..3] run scoreboard players set $dist CmdData 3
execute if entity @s[distance=..2] run scoreboard players set $dist CmdData 2
execute if entity @s[distance=..1] run scoreboard players set $dist CmdData 1
scoreboard players operation $dist CmdData += $dist CmdData

execute at @s as @e[type=armor_stand,tag=BlastBarrel,distance=..1,limit=1,sort=nearest] run function weapons:barrel/copyname