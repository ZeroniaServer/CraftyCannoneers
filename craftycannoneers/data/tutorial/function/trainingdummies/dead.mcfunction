scoreboard players add @s eyeclick 1

execute if score @s eyeclick matches 1 run playsound trainingdummy_hit1 master @a ~ ~ ~ 1 1
execute if score @s eyeclick matches 1 run playsound trainingdummy_hit3 master @a ~ ~ ~ 1 0
execute if score @s eyeclick matches 1 run playsound trainingdummy_hit2 master @a ~ ~ ~ 1 0.7
execute if score @s eyeclick matches 1 run playsound trainingdummy_hit2 master @a ~ ~ ~ 1 2
execute if score @s eyeclick matches 1 run item replace entity @s container.0 with air
execute if score @s eyeclick matches 1 run particle cloud ~ ~ ~ 0 0 0 0.2 10
execute if score @s eyeclick matches 1 run particle block{block_state:"oak_planks"} ~ ~1.3 ~ 0 0.3 0 0.1 50
execute if score @s eyeclick matches 1 run particle block{block_state:"hay_block"} ^0.2 ^1 ^ 0 0.1 0 0.1 20
execute if score @s eyeclick matches 1 run particle block{block_state:"hay_block"} ^-0.2 ^1 ^ 0 0.1 0 0.1 20
execute if score @s[tag=45] eyeclick matches 2 run summon marker ~ ~ ~ {Tags:["DummyRespawn","TrainingDummy","45"]}
execute if score @s[tag=90] eyeclick matches 2 run summon marker ~ ~ ~ {Tags:["DummyRespawn","TrainingDummy","90"]}
execute if score @s[tag=135] eyeclick matches 2 run summon marker ~ ~ ~ {Tags:["DummyRespawn","TrainingDummy","135"]}
execute if score @s[tag=!45,tag=!90,tag=!135] eyeclick matches 2 run summon marker ~ ~ ~ {Tags:["DummyRespawn","TrainingDummy"]}
execute if score @s eyeclick matches 2 run tp @e[type=marker,tag=DummyRespawn,limit=1,sort=nearest,distance=..2] @s
execute if score @s eyeclick matches 2 run summon item ~ ~1.2 ~ {Age:-32768,Tags:["DummyDeadItem","pumpkin"],Item:{id:"minecraft:carved_pumpkin",count:1},PickupDelay:1000,Motion:[0.03d,0.2d,0.05d]}
execute if score @s eyeclick matches 2 run summon item ~ ~1.2 ~ {Age:-32768,Tags:["DummyDeadItem","wheat"],Item:{id:"minecraft:wheat",count:1},PickupDelay:1000,Motion:[-0.05d,0.25d,0.05d]}
execute if score @s eyeclick matches 2 run summon item ~ ~1.2 ~ {Age:-32768,Tags:["DummyDeadItem","wheat"],Item:{id:"minecraft:wheat",count:1},PickupDelay:1000,Motion:[-0.01d,0.22d,0.05d]}
execute if score @s eyeclick matches 2 run summon item ~ ~1.2 ~ {Age:-32768,Tags:["DummyDeadItem","wheat"],Item:{id:"minecraft:wheat",count:1},PickupDelay:1000,Motion:[0.05d,0.2d,-0.02d]}
execute if score @s eyeclick matches 2 run summon item ~ ~1.2 ~ {Age:-32768,Tags:["DummyDeadItem","hat"],Item:{id:"minecraft:diamond_hoe",components:{"custom_model_data":{floats:[108.0f]}},count:1},PickupDelay:1000,Motion:[-0.05d,0.2d,-0.05d]}
execute if score @s eyeclick matches 5.. run kill @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest]

kill @s[scores={eyeclick=5..}]