execute if entity @s[tag=DummyRespawn,nbt={Rotation:[45.0f,0.0f]}] run tag @s add 45
execute if entity @s[tag=DummyRespawn,nbt={Rotation:[90.0f,0.0f]}] run tag @s add 90
execute if entity @s[tag=DummyRespawn,nbt={Rotation:[135.0f,0.0f]}] run tag @s add 135

execute unless entity @s[tag=45] unless entity @s[tag=90] unless entity @s[tag=135] positioned ~ ~0.175 ~ run summon armor_stand ~ ~ ~ {Tags:["TrainingDummy","TDAS"],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:77}}],DisabledSlots:4144959}
execute if entity @s[tag=45] positioned ~ ~0.175 ~ run summon armor_stand ~ ~ ~ {Tags:["TrainingDummy","TDAS"],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:77}}],Rotation:[45.0f,0.0f],DisabledSlots:4144959}
execute if entity @s[tag=90] positioned ~ ~0.175 ~ run summon armor_stand ~ ~ ~ {Tags:["TrainingDummy","TDAS"],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:77}}],Rotation:[90.0f,0.0f],DisabledSlots:4144959}
execute if entity @s[tag=135] positioned ~ ~0.175 ~ run summon armor_stand ~ ~ ~ {Tags:["TrainingDummy","TDAS"],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:77}}],Rotation:[135.0f,0.0f],DisabledSlots:4144959}
execute positioned ~ ~0.175 ~ run tp @e[type=armor_stand,tag=TDAS,limit=1,sort=nearest,distance=..0.1] ~ ~ ~ ~ ~

summon husk ~ ~ ~ {DeathTime:19s,Tags:["TrainingDummy","TDZombie"],Attributes:[{Name:"generic.armor",Base:15d}],NoGravity:1b,Health:20.0f,Silent:1b,NoAI:1b,PersistenceRequired:1b}
tp @e[type=husk,tag=TrainingDummy,tag=TDZombie,limit=1,sort=nearest,distance=..0.1] ~ ~ ~ ~ ~
summon area_effect_cloud ~ ~1.6 ~ {Tags:["TrainingDummy","NameTag"],Duration:2000000000,CustomNameVisible:1b,CustomName:'["",{"text":"❤ ","color":"red"},{"text":"20","color":"green"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=TDZombie] store result score @s eyeclick run data get entity @s Health
particle cloud ~ ~1 ~ 0 0.5 0 0.1 20 force