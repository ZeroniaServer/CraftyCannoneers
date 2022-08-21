scoreboard players add @s eyeclick 1

execute at @s[scores={eyeclick=1}] run playsound trainingdummy_hit1 master @a ~ ~ ~ 1 1
execute at @s[scores={eyeclick=1}] run playsound trainingdummy_hit3 master @a ~ ~ ~ 1 0
execute at @s[scores={eyeclick=1}] run playsound trainingdummy_hit2 master @a ~ ~ ~ 1 0.7
execute at @s[scores={eyeclick=1}] run playsound trainingdummy_hit2 master @a ~ ~ ~ 1 2
execute at @s[scores={eyeclick=1}] run item replace entity @s armor.head with air
execute at @s[scores={eyeclick=1}] run particle cloud ~ ~ ~ 0 0 0 0.2 10
execute at @s[scores={eyeclick=1}] run particle block oak_planks ~ ~1.3 ~ 0 0.3 0 0.1 50
execute at @s[scores={eyeclick=1}] run particle block hay_block ^0.2 ^1 ^ 0 0.1 0 0.1 20
execute at @s[scores={eyeclick=1}] run particle block hay_block ^-0.2 ^1 ^ 0 0.1 0 0.1 20
execute at @s[scores={eyeclick=2}] run summon marker ~ ~ ~ {Tags:["DummyRespawn","TrainingDummy"]}
execute at @s[scores={eyeclick=2}] run tp @e[type=marker,tag=DummyRespawn,limit=1,sort=nearest,distance=..2] @s
execute at @s[scores={eyeclick=2}] run summon item ~ ~1.2 ~ {Tags:["DummyDeadItem","pumpkin"],Item:{id:"minecraft:carved_pumpkin",Count:1b},PickupDelay:1000,Motion:[0.03d,0.2d,0.05d]}
execute at @s[scores={eyeclick=2}] run summon item ~ ~1.2 ~ {Tags:["DummyDeadItem","wheat"],Item:{id:"minecraft:wheat",Count:1b},PickupDelay:1000,Motion:[-0.05d,0.25d,0.05d]}
execute at @s[scores={eyeclick=2}] run summon item ~ ~1.2 ~ {Tags:["DummyDeadItem","wheat"],Item:{id:"minecraft:wheat",Count:1b},PickupDelay:1000,Motion:[-0.01d,0.22d,0.05d]}
execute at @s[scores={eyeclick=2}] run summon item ~ ~1.2 ~ {Tags:["DummyDeadItem","wheat"],Item:{id:"minecraft:wheat",Count:1b},PickupDelay:1000,Motion:[0.05d,0.2d,-0.02d]}
execute at @s[scores={eyeclick=2}] run summon item ~ ~1.2 ~ {Tags:["DummyDeadItem","hat"],Item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:39},Count:1b},PickupDelay:1000,Motion:[-0.05d,0.2d,-0.05d]}
execute at @s[scores={eyeclick=5..}] run kill @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest]

kill @s[scores={eyeclick=5..}]