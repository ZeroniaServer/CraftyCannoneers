kill @e[type=armor_stand,tag=Boat]
kill @e[type=boat,tag=Boat]
kill @e[type=interaction,tag=BoatCannonBlocker]
kill @e[type=interaction,tag=boatoccupant]
kill @e[type=marker,tag=bcannon]
execute as @e[type=husk,tag=BoatCannonDisplay] run function arenaclear:kill
execute as @e[type=villager,tag=BoatCannon] run function arenaclear:kill
execute as @e[type=camel,tag=BoatCannonAnchor] run function arenaclear:kill

summon marker 109 -30 0 {Tags:["1","respawnboat"]}
summon marker 31 -30 0 {Tags:["2","respawnboat"]}
summon marker 83 -30 12 {Tags:["3","respawnboat"]}
summon marker 57 -30 -12 {Tags:["4","respawnboat"]}
execute as @e[type=marker,tag=respawnboat] at @s run function game:boat/placenew

execute as @e[type=armor_stand,tag=BoatAS] at @s run function game:boat/copyrotation