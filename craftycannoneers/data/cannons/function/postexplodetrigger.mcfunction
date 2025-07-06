summon area_effect_cloud ~ ~10000 ~ {Tags:["postexplode"],Particle:{type:"block",block_state:"minecraft:air"},Duration:1,Radius:0.0f,ReapplicationDelay:-1,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:0b,duration:1,show_particles:0b}]}}
summon bat ~ ~10000 ~ {DeathLootTable:"chests:empty",NoAI:1b,Health:1.0f,Tags:["postexplode"],PersistenceRequired:1b,Silent:1b}
data modify entity @e[type=area_effect_cloud,tag=postexplode,limit=1] Owner set from entity @s UUID
tag @e[type=area_effect_cloud,tag=postexplode,limit=1] remove postexplode