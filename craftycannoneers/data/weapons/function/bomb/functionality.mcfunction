#> Projectile functions
scoreboard players set $inair CmdData 0
execute at @s positioned ~ ~0.1 ~ if entity @e[type=boat,dx=0,limit=1] run scoreboard players add @s ctr 1
execute if score @s ctr matches 2.. run tag @s add boat
execute if entity @s[tag=boat] on vehicle run kill
execute if entity @s[tag=!boat] on vehicle run function weapons:bomb/projectile

#> General

execute if score $inair CmdData matches 0 run tag @s[tag=!WaterKill,scores={CmdData=3..}] add Kaboom
scoreboard players add @s CmdData 1
execute at @s[tag=!WaterKill] run particle flame ~ ~0.5 ~ 0 0 0 .02 1 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!WaterKill] run playsound blastbombfuse master @a ~ ~ ~ 0.5 1

execute as @e[type=breeze_wind_charge,tag=BlastCharge] at @s run data merge entity @s {Motion:[0.0d,-10.0d,0.0d]}

execute as @e[type=breeze_wind_charge,tag=BlastCharge] at @s run data modify entity @s Motion set from entity @e[type=potion,tag=Bomb,limit=1,sort=nearest] Motion

#> Water kill
scoreboard players set @s[predicate=game:inwater,tag=!WaterKill,tag=!boat] CmdData 0
tag @s[predicate=game:inwater,tag=!WaterKill,tag=!boat] add WaterKill 
tag @s[tag=WaterKill] remove Kaboom
execute if entity @s[tag=WaterKill,scores={CmdData=0}] on vehicle run kill @s
execute at @s[tag=WaterKill,scores={CmdData=1..}] positioned ~ ~-0.8 ~ if predicate game:located_water run scoreboard players add @s ctr 1
execute at @s[tag=WaterKill,scores={CmdData=1..}] positioned ~ ~-0.7 ~ if predicate game:located_water run scoreboard players add @s ctr 1
execute at @s[tag=WaterKill,scores={CmdData=1..}] positioned ~ ~-0.6 ~ if predicate game:located_water run scoreboard players add @s ctr 1
execute at @s[tag=WaterKill,scores={CmdData=1..,ctr=3}] run tp @s ~ ~-0.015 ~
execute at @s[tag=WaterKill,scores={CmdData=1..,ctr=2}] run tp @s ~ ~-0.015 ~
execute at @s[tag=WaterKill,scores={CmdData=1..,ctr=1}] run tp @s ~ ~-0.015 ~
scoreboard players reset @s[tag=WaterKill,scores={CmdData=1..}] ctr
execute at @s[tag=WaterKill,scores={CmdData=1..}] run particle bubble ~ ~ ~ 0 0 0 0 1 force @a[predicate=cannons:seeparticles]
execute at @s[tag=WaterKill,scores={CmdData=1}] run particle cloud ~ ~1 ~ 0 0 0 0.1 2 force @a[predicate=cannons:seeparticles]
execute at @s[tag=WaterKill,scores={CmdData=1}] on passengers run kill @s
execute at @s[tag=WaterKill,scores={CmdData=1}] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.8 2
execute at @s[tag=WaterKill,scores={CmdData=2}] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.8 1.6
data merge entity @s[tag=WaterKill,scores={CmdData=28}] {start_interpolation:0,interpolation_duration:3,transformation:{scale:[0.0f,0.0f,0.0f]}}
execute at @s[tag=WaterKill,scores={CmdData=30..}] run function weapons:bomb/waterkill

#> Kaboom
execute at @s[tag=Kaboom] positioned ~ ~-0.2 ~ run function weapons:bomb/kaboom