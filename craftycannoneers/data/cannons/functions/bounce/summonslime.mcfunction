#> Dismount nearby Crabs/Sharks so they can be moved
execute as @e[type=endermite,tag=CrabVehicle,tag=!dismounted,distance=..7] run function game:modifiers/crabs/dismount
execute as @e[type=cat,tag=CrabVehicle,tag=!dismounted,distance=..7] run function game:modifiers/crabs/dismount
execute as @e[type=cod,tag=NewVCod,tag=!dismounted,distance=..7] run function game:modifiers/sharks/dismount

#> Summon 20 slimes
function cannons:bounce/summon4slime
function cannons:bounce/summon4slime
function cannons:bounce/summon4slime
function cannons:bounce/summon4slime
function cannons:bounce/summon4slime

#> Store this Cannonball entity's UUID into slimes
execute store result score @s bounceID run data get entity @s UUID[0]
execute store result score @e[type=slime,tag=BounceSlime,tag=!HasName] bounceID run scoreboard players get @s bounceID

#> Copy name
data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute as @e[type=slime,tag=BounceSlime,tag=!HasName] run data modify entity @s CustomName set from storage craftycannoneers:temp CustomName
tag @e[type=slime,tag=BounceSlime,tag=!HasName] add HasName

#> Tag players for UtilKill system
tag @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..7] add UtilKilled
execute store result score @a[tag=UtilKilled,distance=..7] KillerUUID run scoreboard players get @s playerUUID