playsound blastbarrelplace master @a[distance=..2] ~ ~ ~ 0.4 1
playsound blastbarrelplace master @a[distance=2.0001..3] ~ ~ ~ 0.2 1
playsound blastbarrelplace master @a[distance=3.0001..] ~ ~ ~ 0.1 1
particle item{item:{id:"mooshroom_spawn_egg",components:{"minecraft:custom_model_data":{floats:[1.0f]}}}} ~ ~ ~ 0.4 0 0.4 0.1 5 force @a[team=!Lobby]
particle cloud ~ ~0.1 ~ 0.2 0.1 0.2 0.03 3 force @a[team=!Lobby]
summon bat ~ ~-0.01 ~ {NoAI:1b,Silent:1b,NoGravity:1b,Tags:["BlastBarrel"],PersistenceRequired:1b,DeathTime:17s,active_effects:[{id:"minecraft:instant_health",amplifier:10b,duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:127b,duration:-1,show_particles:0b},{id:"minecraft:health_boost",amplifier:127b,duration:-1,show_particles:0b}]}
team join NoName @e[type=bat,tag=BlastBarrel,limit=1,sort=nearest]

execute if score $angle CmdData matches 0 run summon item_display ~ ~ ~ {item_display:"head",Tags:["BlastBarrel"],item:{id:"minecraft:mooshroom_spawn_egg",count:1,components:{"custom_model_data":{floats:[1.0f]}}}}
execute if score $angle CmdData matches 0 run summon interaction ~0.3 ~0.25 ~ {width:0.35f,height:0.5f,response:1b,Tags:["BlastBarrel"]}
execute if score $angle CmdData matches 0 run summon interaction ~-0.3 ~0.25 ~ {width:0.35f,height:0.5f,response:1b,Tags:["BlastBarrel"]}

execute if score $angle CmdData matches 1 run summon item_display ~ ~ ~ {Rotation:[90f,0f],item_display:"head",Tags:["BlastBarrel"],item:{id:"minecraft:mooshroom_spawn_egg",count:1,components:{"custom_model_data":{floats:[1.0f]}}}}
execute if score $angle CmdData matches 1 run summon interaction ~ ~0.25 ~0.3 {width:0.35f,height:0.5f,response:1b,Tags:["BlastBarrel"]}
execute if score $angle CmdData matches 1 run summon interaction ~ ~0.25 ~-0.3 {width:0.35f,height:0.5f,response:1b,Tags:["BlastBarrel"]}

kill @s