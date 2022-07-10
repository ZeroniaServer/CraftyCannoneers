
execute as @e[type=armor_stand,tag=Bomb,nbt={OnGround:1b},scores={CmdData=3..}] at @s run tag @s add Kaboom
scoreboard players add @e[type=armor_stand,tag=Bomb,tag=Kaboom] BombDelay 1
scoreboard players add @e[type=armor_stand,tag=Bomb] CmdData 1
execute as @e[type=armor_stand,tag=Bomb,tag=Kaboom,scores={BombDelay=6..}] at @s run playsound minecraft:cannonball master @a ~ ~ ~ 1 2
execute as @e[type=armor_stand,tag=Bomb,tag=Kaboom,scores={BombDelay=6..}] at @s run particle explosion ~ ~ ~ 1 1 1 0.1 7 force

execute as @e[type=armor_stand,tag=Bomb,tag=Kaboom,scores={BombDelay=4}] run data merge entity @s {Marker:1b,NoGravity:1b}

execute as @e[type=armor_stand,tag=Bomb,tag=Kaboom,scores={BombDelay=4}] at @s run summon area_effect_cloud ~ ~153 ~ {Tags:["BlastAEC"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:6f,Duration:1,Effects:[{Id:25,Amplifier:100,Duration:2,ShowParticles:0b}]}
execute as @e[type=armor_stand,tag=Bomb,tag=Kaboom,scores={BombDelay=4}] at @s run summon area_effect_cloud ~ ~155 ~ {Tags:["BlastAEC"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:6f,Duration:1,Effects:[{Id:25,Amplifier:100,Duration:2,ShowParticles:0b}]}
execute as @e[type=armor_stand,tag=Bomb,tag=Kaboom,scores={BombDelay=4}] at @s run summon area_effect_cloud ~ ~158 ~ {Tags:["BlastAEC"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:6f,Duration:1,Effects:[{Id:25,Amplifier:100,Duration:2,ShowParticles:0b}]}

execute as @e[type=armor_stand,tag=Bomb,tag=Kaboom,scores={BombDelay=5}] at @s run function weapons:bomb/summonslime
team join Collide @e[type=slime,tag=BlastSlime]
#effect give @e[type=slime,tag=BlastSlime] invisibility 1000000 100 true
effect give @e[type=area_effect_cloud,tag=BlastAEC] invisibility 1000000 100 true
execute as @e[type=slime,tag=BlastSlime] run scoreboard players add @s CmdData 1
execute as @e[type=area_effect_cloud,tag=BlastAEC] run scoreboard players add @s CmdData 1
execute as @e[type=area_effect_cloud,tag=BlastAEC,scores={CmdData=1}] at @s run tp @s ~ ~-155 ~
execute as @e[type=slime,tag=BlastSlime,scores={CmdData=1}] at @s run tp @s ~ ~31 ~
execute as @e[type=slime,tag=BlastSlime,scores={CmdData=1}] at @s run data merge entity @s {NoAI:0b,Attributes:[{Name:"generic.attack_damage",Base:4f}]}
execute as @e[type=slime,tag=BlastSlime,scores={CmdData=6..}] at @s run data merge entity @s {Size:0}
execute as @e[type=slime,tag=BlastSlime,scores={CmdData=6..}] at @s run tp @s ~ ~-500 ~
execute as @e[type=slime,tag=BlastSlime,scores={CmdData=6..}] at @s run kill @s

kill @e[type=armor_stand,tag=Bomb,tag=Kaboom,scores={BombDelay=6..}]