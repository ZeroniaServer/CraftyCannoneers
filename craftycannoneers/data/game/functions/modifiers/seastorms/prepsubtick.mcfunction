summon area_effect_cloud ~ ~10000 ~ {Duration:1,Radius:0.0f,ReapplicationDelay:-1,Age:-1,WaitTime:0,effects:[{id:"minecraft:instant_damage",amplifier:0b,duration:1}],Tags:["subtickaec"]}
summon bat ~ ~10000 ~ {DeathLootTable:"",NoAI:1b,Health:1.0f,Tags:["subtickbat"],PersistenceRequired:1b}
data modify entity @e[type=area_effect_cloud,tag=subtickaec,limit=1] Owner set from entity @s UUID
execute as @e[type=area_effect_cloud,tag=subtickaec,limit=1] run tag @s remove subtickaec