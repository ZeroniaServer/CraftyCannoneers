execute if entity @e[type=armor_stand,tag=RocketLaunch] run tellraw @s [{"text":"Launch already in progress!","color":"yellow"}]
execute unless entity @e[type=armor_stand,tag=RocketLaunch] run tellraw @s [{"text":"Takeoff!","color":"yellow"}]
advancement grant @s only tutorial:eastereggs/rocketriders
execute unless entity @e[type=armor_stand,tag=RocketLaunch] run summon armor_stand -58 -25 -21 {Tags:["RocketLaunch"],Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:78}}]}

function lobby:easteregg/rocket/reset