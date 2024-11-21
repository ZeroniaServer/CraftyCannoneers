execute if entity @e[type=item_display,tag=RocketLaunch,limit=1] run tellraw @s [{"translate":"easter_egg.launch.in_progress","color":"yellow"}]
execute unless entity @e[type=item_display,tag=RocketLaunch,limit=1] run tellraw @s [{"translate":"easter_egg.launch.takeoff","color":"yellow"}]
advancement grant @s only tutorial:eastereggs/rocketriders
execute unless entity @e[type=item_display,tag=RocketLaunch,limit=1] run summon item_display -58 -25 -21 {Tags:["RocketLaunch"],item_display:"head",teleport_duration:2,item:{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":{floats:[78.0f]}}},transformation:{scale:[0.625f,0.625f,0.625f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

function lobby:easteregg/rocket/reset