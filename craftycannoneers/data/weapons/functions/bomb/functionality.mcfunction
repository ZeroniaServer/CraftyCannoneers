#> Projectile functions
scoreboard players set $inair CmdData 0
execute on vehicle at @s run function weapons:bomb/projectile

#> General
execute if score $inair CmdData matches 0 run tag @s[tag=!WaterKill,scores={CmdData=3..}] add Kaboom
scoreboard players add @s CmdData 1
execute at @s[tag=!WaterKill] run particle flame ~ ~0.5 ~ 0 0 0 .02 1 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!WaterKill] run playsound blastbombfuse master @a ~ ~ ~ 0.5 1

#> Water kill
scoreboard players set @s[predicate=game:inwater,tag=!WaterKill] CmdData 0
tag @s[predicate=game:inwater,tag=!WaterKill] add WaterKill 
tag @s[tag=WaterKill] remove Kaboom
execute if entity @s[tag=WaterKill,scores={CmdData=0}] on vehicle run kill @s
execute at @s[tag=WaterKill,scores={CmdData=1}] positioned ~ ~-0.5 ~ run function weapons:bomb/sinkanim
execute at @s[tag=WaterKill,scores={CmdData=1}] run particle cloud ~ ~1 ~ 0 0 0 0.1 2 force @a[predicate=cannons:seeparticles]
execute at @s[tag=WaterKill,scores={CmdData=1}] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.8 2
execute at @s[tag=WaterKill,scores={CmdData=2}] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.8 1.6
execute at @s[tag=WaterKill,scores={CmdData=1..}] run function weapons:bomb/bubbletrail
data merge entity @s[tag=WaterKill,scores={CmdData=28}] {start_interpolation:0,interpolation_duration:3,transformation:{scale:[0.0f,0.0f,0.0f]}}
execute at @s[tag=WaterKill,scores={CmdData=30..}] run function weapons:bomb/waterkill

#> Kaboom
execute at @s[tag=Kaboom] positioned ~ ~-0.2 ~ run function weapons:bomb/kaboom