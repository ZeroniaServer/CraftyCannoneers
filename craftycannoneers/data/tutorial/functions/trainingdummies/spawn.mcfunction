summon armor_stand ~ ~ ~ {Tags:["TrainingDummy","TDAS"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:77}}]}
tp @e[type=armor_stand,tag=TrainingDummy,tag=TDAS,limit=1,sort=nearest,distance=..0.1] ~ ~ ~ ~ ~
summon husk ~ ~ ~ {DeathTime:19s,Tags:["TrainingDummy","TDZombie"],Attributes:[{Name:"generic.armor",Base:15f}],NoGravity:1b,Health:20.0f,Silent:1b,NoAI:1b,PersistenceRequired:1b}
tp @e[type=husk,tag=TrainingDummy,tag=TDZombie,limit=1,sort=nearest,distance=..0.1] ~ ~ ~ ~ ~
summon area_effect_cloud ~ ~1.6 ~ {Tags:["TrainingDummy","NameTag"],Duration:2000000000,CustomNameVisible:1b,CustomName:'["",{"text":"❤ ","color":"red"},{"text":"20","color":"green"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=TDZombie] store result score @s eyeclick run data get entity @s Health
particle cloud ~ ~1 ~ 0 0.5 0 0.1 20 force