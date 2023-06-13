#> Dismount nearby Crabs/Sharks so they can be moved
execute as @e[type=cat,tag=CrabVehicle,tag=!dismounted,distance=..6] run function game:modifiers/crabs/dismount
execute as @e[type=cod,tag=NewVCod,tag=!dismounted,distance=..6] run function game:modifiers/sharks/dismount

#> Blast nearby Boats backwards
summon marker ~ ~ ~ {Tags:["posanchor"]}
execute as @e[type=boat,tag=BoatBoat,distance=..6] run function game:boat/blast
kill @e[type=marker,tag=posanchor]

function weapons:bomb/summon4slime
function weapons:bomb/summon4slime
function weapons:bomb/summon4slime
function weapons:bomb/summon4slime
function weapons:bomb/summon4slime

data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute as @e[type=slime,tag=BlastSlime,tag=!HasName] run data modify entity @s CustomName set from storage craftycannoneers:temp CustomName
tag @e[type=slime,tag=BlastSlime,tag=!HasName] add HasName

tag @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..6] add UtilKilled
execute store result score @a[tag=UtilKilled,distance=..6] KillerUUID run scoreboard players get @s playerUUID