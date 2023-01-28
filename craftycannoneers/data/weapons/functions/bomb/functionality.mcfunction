#> General
tag @s[tag=!WaterKill,scores={CmdData=3..},nbt={OnGround:1b}] add Kaboom
scoreboard players add @s CmdData 1
execute at @s[tag=!WaterKill] run particle flame ~ ~0.5 ~ 0 0 0 .02 1 force
execute at @s[tag=!WaterKill] run playsound blastbombfuse master @a ~ ~ ~ 0.5 1

#> Water kill
execute as @e[type=armor_stand,tag=!Kaboom,tag=Bomb,tag=!WaterKill] at @s if block ~ ~ ~ water run scoreboard players reset @s CmdData
execute as @e[type=armor_stand,tag=!Kaboom,tag=Bomb] at @s if block ~ ~ ~ water run tag @s add WaterKill
execute as @e[type=armor_stand,tag=Bomb,tag=WaterKill,scores={CmdData=1}] at @s run data merge entity @s {Motion:[0.0,-0.02,0.0]}
execute as @e[type=armor_stand,tag=Bomb,tag=WaterKill,scores={CmdData=1}] at @s run particle cloud ~ ~1 ~ 0 0 0 0.1 2 force
execute as @e[type=armor_stand,tag=Bomb,tag=WaterKill,scores={CmdData=1}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.8 2
execute as @e[type=armor_stand,tag=Bomb,tag=WaterKill,scores={CmdData=2}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.8 1.6
execute as @e[type=armor_stand,tag=Bomb,tag=WaterKill,scores={CmdData=30..}] at @s run function weapons:bomb/waterkill


#> Kaboom
execute at @s[tag=Kaboom] run function weapons:bomb/kaboom