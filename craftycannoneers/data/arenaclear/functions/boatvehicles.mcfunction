kill @e[type=item_display,tag=Boat]
kill @e[type=boat,tag=Boat]
kill @e[type=interaction,tag=boatoccupant]

#> Boat Cannons
execute as @e[type=camel,tag=BoatCannonAnchor,tag=!markkill] run function arenaclear:markkill
execute as @e[type=villager,tag=BoatCannonAnchor,tag=!markkill] run function arenaclear:markkill
kill @e[type=interaction,tag=BoatCannon]
kill @e[type=item_display,tag=BoatCannonDisplay]
kill @e[type=marker,tag=bcannon]
kill @e[type=area_effect_cloud,tag=BoatCannonOffset]

summon marker 109 -31 0 {Tags:["1","respawnboat"],Rotation:[0.0f,0.0f]}
summon marker 31 -31 0 {Tags:["2","respawnboat"],Rotation:[-180.0f,0.0f]}
summon marker 83 -31 12 {Tags:["3","respawnboat"],Rotation:[0.0f,0.0f]}
summon marker 57 -31 -12 {Tags:["4","respawnboat"],Rotation:[-180.0f,0.0f]}
execute as @e[type=marker,tag=respawnboat] at @s run function game:boat/placenew