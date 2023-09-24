#> Banner
execute as @e[type=item_display,tag=BoatBanner] at @s run function game:boat/banner

#> Tag player in boat
tag @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat1,limit=1] add inBoat1
tag @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat2,limit=1] add inBoat2
tag @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat3,limit=1] add inBoat3
tag @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat4,limit=1] add inBoat4
tag @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/motionlock/inboat1,limit=1] add inBoat1
tag @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/motionlock/inboat2,limit=1] add inBoat2
tag @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/motionlock/inboat3,limit=1] add inBoat3
tag @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/motionlock/inboat4,limit=1] add inBoat4
execute as @a unless entity @s[team=!Lobby,team=!Spectator,team=!Developer] run function game:boat/removetags

#> Boat
execute as @e[type=boat,tag=BoatBoat] at @s run function game:boat/boat

#> Temporary light
execute as @e[type=marker,tag=templight] at @s run function game:boat/cannon/templight

#> Respawning (failsafe)
execute if entity @a unless entity @e[type=boat,tag=BoatBoat,tag=1] run summon marker 109 -31 0 {Tags:["1","respawnboat"],Rotation:[0.0f,0.0f]}
execute if entity @a unless entity @e[type=boat,tag=BoatBoat,tag=2] run summon marker 31 -31 0 {Tags:["2","respawnboat"],Rotation:[-180.0f,0.0f]}
execute if entity @a unless entity @e[type=boat,tag=BoatBoat,tag=3] run summon marker 83 -31 12 {Tags:["3","respawnboat"],Rotation:[0.0f,0.0f]}
execute if entity @a unless entity @e[type=boat,tag=BoatBoat,tag=4] run summon marker 57 -31 -12 {Tags:["4","respawnboat"],Rotation:[-180.0f,0.0f]}
execute as @e[type=marker,tag=respawnboat] at @s run function game:boat/placenew

#> Kill extra entities (failsafe)
kill @e[type=interaction,tag=boatoccupant,predicate=!game:boat/inboat]
execute if score $BoatCannons CmdData matches 1 as @e[type=camel,tag=BoatCannonAnchor,predicate=!game:mounted] run function game:boat/cannon/kill
execute if score $BoatCannons CmdData matches 1 as @e[type=husk,tag=BoatCannonAnchor,predicate=!game:boat/inboat] run function game:boat/cannon/kill
execute if score $BoatCannons CmdData matches 1 as @e[type=area_effect_cloud,tag=BoatCannonOffset,predicate=!game:mounted] run function game:boat/cannon/kill
execute if score $BoatCannons CmdData matches 1 as @e[type=item_display,tag=BoatCannonDisplay,predicate=!game:mounted] run function game:boat/cannon/kill