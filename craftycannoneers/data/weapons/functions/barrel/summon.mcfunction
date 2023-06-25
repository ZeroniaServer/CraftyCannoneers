playsound blastbarrelplace master @a ~ ~ ~ 0.6 1
particle item mooshroom_spawn_egg{CustomModelData:1} ~ ~ ~ 0.4 0 0.4 0.1 5 force @a[team=!Lobby]
particle cloud ~ ~0.1 ~ 0.2 0.1 0.2 0.03 3 force @a[team=!Lobby]
summon husk ~ ~ ~ {NoAI:1b,Silent:1b,NoGravity:1b,IsBaby:1b,Tags:["BlastBarrel","BarrelHitbox"],PersistenceRequired:1b,DeathTime:17s,ActiveEffects:[{Id:7,Amplifier:10b,Duration:-1,ShowParticles:0b}]}
team join NoName @e[type=husk,tag=BarrelHitbox,limit=1,sort=nearest]
summon interaction ~ ~ ~ {width:0.75f,height:1f,response:0b,Tags:["BlastBarrel","BlastBarrelCenter"]}

execute if score $angle CmdData matches 0 run summon item_display ~ ~ ~ {item_display:"head",Tags:["BlastBarrel"],item:{id:"minecraft:mooshroom_spawn_egg",Count:1b,tag:{CustomModelData:1}}}
execute if score $angle CmdData matches 0 run summon interaction ~0.3 ~0.25 ~ {width:0.35f,height:0.5f,response:1b,Tags:["BlastBarrel","BlastBarrelGP"]}
execute if score $angle CmdData matches 0 run summon interaction ~-0.3 ~0.25 ~ {width:0.35f,height:0.5f,response:1b,Tags:["BlastBarrel","BlastBarrelGP"]}

execute if score $angle CmdData matches 1 run summon item_display ~ ~ ~ {Rotation:[90f,0f],item_display:"head",Tags:["BlastBarrel"],item:{id:"minecraft:mooshroom_spawn_egg",Count:1b,tag:{CustomModelData:1}}}
execute if score $angle CmdData matches 1 run summon interaction ~ ~0.25 ~0.3 {width:0.35f,height:0.5f,response:1b,Tags:["BlastBarrel","BlastBarrelGP"]}
execute if score $angle CmdData matches 1 run summon interaction ~ ~0.25 ~-0.3 {width:0.35f,height:0.5f,response:1b,Tags:["BlastBarrel","BlastBarrelGP"]}

kill @s