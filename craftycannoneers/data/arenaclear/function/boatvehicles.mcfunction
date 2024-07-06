kill @e[x=0,type=item_display,tag=Boat]
kill @e[x=0,type=boat,tag=Boat]
kill @e[x=0,type=interaction,tag=boatoccupant]

#> Boat Cannons
execute as @e[x=0,type=camel,tag=BoatCannonAnchor,tag=!markkill] run function arenaclear:markkill
execute as @e[x=0,type=villager,tag=BoatCannonAnchor,tag=!markkill] run function arenaclear:markkill
kill @e[x=0,type=interaction,tag=BoatCannon]
kill @e[x=0,type=item_display,tag=BoatCannonDisplay]
kill @e[x=0,type=marker,tag=bcannon]
kill @e[x=0,type=area_effect_cloud,tag=BoatCannonOffset]

summon marker 109 -31.5 0 {Tags:["1","respawnboat"],Rotation:[0.0f,0.0f]}
summon marker 31 -31.5 0 {Tags:["2","respawnboat"],Rotation:[-180.0f,0.0f]}
summon marker 83 -31.5 12 {Tags:["3","respawnboat"],Rotation:[0.0f,0.0f]}
summon marker 57 -31.5 -12 {Tags:["4","respawnboat"],Rotation:[-180.0f,0.0f]}
execute as @e[x=0,type=marker,tag=respawnboat] at @s run function game:boat/placenew