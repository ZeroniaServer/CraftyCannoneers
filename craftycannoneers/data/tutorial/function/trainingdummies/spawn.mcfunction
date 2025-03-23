execute if entity @s[tag=!45,tag=!90,tag=!135] positioned ~ ~ ~ run summon item_display ~ ~ ~ {width:1f,height:2f,Tags:["TrainingDummy","TDDisplay"],item_display:"head",item:{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":{floats:[77.0f]}}},transformation:{translation:[0.0f,1.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if entity @s[tag=45] positioned ~ ~ ~ run summon item_display ~ ~ ~ {width:1f,height:2f,Tags:["TrainingDummy","TDDisplay","45"],item_display:"head",item:{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":{floats:[77.0f]}}},Rotation:[45.0f,0.0f],transformation:{translation:[0.0f,1.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if entity @s[tag=90] positioned ~ ~ ~ run summon item_display ~ ~ ~ {width:1f,height:2f,Tags:["TrainingDummy","TDDisplay","90"],item_display:"head",item:{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":{floats:[77.0f]}}},Rotation:[90.0f,0.0f],transformation:{translation:[0.0f,1.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if entity @s[tag=135] positioned ~ ~ ~ run summon item_display ~ ~ ~ {width:1f,height:2f,Tags:["TrainingDummy","TDDisplay","135"],item_display:"head",item:{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":{floats:[77.0f]}}},Rotation:[135.0f,0.0f],transformation:{translation:[0.0f,1.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

summon husk ~ ~ ~ {DeathTime:17s,Tags:["TrainingDummy","TDZombie"],attributes:[{id:"minecraft:armor",base:15d}],NoGravity:1b,Health:20.0f,Silent:1b,NoAI:1b,PersistenceRequired:1b}
tp @e[type=husk,tag=TrainingDummy,tag=TDZombie,limit=1,sort=nearest,distance=..0.1] ~ ~ ~ ~ ~
summon area_effect_cloud ~ ~1.6 ~ {Tags:["TrainingDummy","NameTag"],Duration:2000000000,CustomNameVisible:1b,CustomName:["",{text:"❤ ",color:"red"},{text:"20",color:"green"},{text:"/",color:"gray"},{text:"20",color:"dark_green"}]}
execute as @e[type=husk,tag=TDZombie] store result score @s eyeclick run data get entity @s Health
particle cloud ~ ~1 ~ 0 0.5 0 0.1 20 force @a[team=Lobby,predicate=game:tutorialbounds]