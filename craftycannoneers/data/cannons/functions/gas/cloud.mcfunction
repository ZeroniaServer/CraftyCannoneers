execute at @s[tag=GasIgnite] at @s run function cannons:firering/ignitecloud

scoreboard players add @s CmdData 1

execute at @s[scores={CmdData=1}] run playsound gas master @a ~ ~ ~ 1 0.8
execute at @s[scores={CmdData=1}] run summon item_display ~ ~ ~ {Tags:["gascloud"],Passengers:[{id:"item_display",Tags:["gascloud","GasDisplay"],item:{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:33}},item_display:"head",transformation:{translation:[0f,-1f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},width:3f,height:3f,brightness:{sky:10,block:12}}]}
execute at @s[scores={CmdData=1}] run summon bat ~ ~2 ~ {Tags:["GasBat"],Silent:1b,Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}]}
execute at @s[scores={CmdData=1}] run summon bat ~ ~2 ~ {Tags:["GasBat"],Silent:1b,Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}]}
execute at @s[scores={CmdData=1}] run summon bat ~ ~2 ~ {Tags:["GasBat"],Silent:1b,Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}]}
execute at @s[scores={CmdData=1}] run summon bat ~ ~2 ~ {Tags:["GasBat"],Silent:1b,Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}]}
execute at @s[scores={CmdData=1}] run summon bat ~ ~2 ~ {Tags:["GasBat"],Silent:1b,Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}]}

tp @s ~ ~0.002 ~
effect give @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] poison 6 100 true
effect give @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] nausea 10 3 true
effect give @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] blindness 2 0 true
tag @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] add NoRegen
effect clear @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] regeneration
scoreboard players reset @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] NoRegenTimer

execute at @s[scores={CmdData=243}] run data merge entity @e[type=item_display,tag=GasDisplay,limit=1,sort=nearest,distance=..1] {start_interpolation:0,interpolation_duration:8,transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f]}}
execute at @s[scores={CmdData=250..}] as @e[type=item_display,tag=GasDisplay,limit=1,sort=nearest,distance=..1] run function cannons:gas/cloudkill
kill @s[scores={CmdData=250..}]

#> Explode
execute at @s[tag=GasExplode] run function cannons:gas/explode