## TODO: Everything


#> Summon 20 slimes
function game:modifiers/lostcargo/summon4slime
function game:modifiers/lostcargo/summon4slime
function game:modifiers/lostcargo/summon4slime
function game:modifiers/lostcargo/summon4slime
function game:modifiers/lostcargo/summon4slime

#> Store this Cannonball entity's UUID into slimes
execute store result score @s bounceID run data get entity @s UUID[0]
execute store result score @e[type=slime,tag=TrapSlime,tag=!HasName] bounceID run scoreboard players get @s bounceID

#> Copy name
data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute as @e[type=slime,tag=TrapSlime,tag=!HasName] run data modify entity @s CustomName set from storage craftycannoneers:temp CustomName
data remove storage craftycannoneers:temp CustomName
tag @e[type=slime,tag=TrapSlime,tag=!HasName] add HasName

#> Tag players for UtilKill system
tag @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..7] add UtilKilled
execute store result score @a[tag=UtilKilled,distance=..7] KillerUUID run scoreboard players get @s playerUUID