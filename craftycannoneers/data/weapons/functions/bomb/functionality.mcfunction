#> General
tag @s[tag=!WaterKill,scores={CmdData=3..},nbt={OnGround:1b}] add Kaboom
scoreboard players add @s CmdData 1
execute at @s[tag=!WaterKill] run particle flame ~ ~0.5 ~ 0 0 0 .02 1 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!WaterKill] run playsound blastbombfuse master @a ~ ~ ~ 0.5 1

#> Water kill
execute at @s[tag=!WaterKill] if block ~ ~ ~ water run scoreboard players reset @s CmdData
execute at @s if block ~ ~ ~ water run tag @s add WaterKill
execute at @s[predicate=game:inwater] run tag @s add WaterKill 
tag @s[tag=WaterKill] remove Kaboom
data merge entity @s[tag=WaterKill,scores={CmdData=1}] {Motion:[0.0,-0.02,0.0]}
execute at @s[tag=WaterKill,scores={CmdData=1}] run particle cloud ~ ~1 ~ 0 0 0 0.1 2 force @a[predicate=cannons:seeparticles]
execute at @s[tag=WaterKill,scores={CmdData=1}] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.8 2
execute at @s[tag=WaterKill,scores={CmdData=2}] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.8 1.6
execute at @s[tag=WaterKill,scores={CmdData=30..}] run function weapons:bomb/waterkill

#> Air toggle
execute store result entity @s Air short 1 run scoreboard players get $toggle CmdData

#> Other landing conditions
execute at @s[tag=!WaterKill,predicate=!game:inwater] run function weapons:bomb/checklanded

#> Kaboom
execute at @s[tag=Kaboom] run function weapons:bomb/kaboom