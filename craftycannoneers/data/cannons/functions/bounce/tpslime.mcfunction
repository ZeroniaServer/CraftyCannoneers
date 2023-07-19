scoreboard players operation $temp bounceID = @s bounceID
execute as @e[type=slime,tag=BounceSlime] run function cannons:bounce/tpidentify
scoreboard players reset $temp bounceID

#> Dismount nearby Crabs/Sharks so they can be moved
execute if score $tp bounceID matches 1 as @e[type=cat,tag=CrabVehicle,tag=!dismounted,distance=..7] run function game:modifiers/crabs/dismount
execute if score $tp bounceID matches 1 as @e[type=cod,tag=NewVCod,tag=!dismounted,distance=..7] run function game:modifiers/sharks/dismount

#> Blast nearby Boats backwards
execute at @s as @e[type=boat,tag=BoatBoat,distance=..7] run function game:boat/blast

#> Blast nearby items/projectiles backwards
execute at @s as @e[type=item,distance=..7] run function weapons:bomb/blast
execute at @s as @e[type=arrow,distance=..7] run function weapons:bomb/blast
execute at @s as @e[type=trident,distance=..7] run function weapons:bomb/blast
execute at @s as @e[type=potion,distance=..7] run function weapons:bomb/blast

#> Tag players for UtilKill system
execute if score $tp bounceID matches 1 run tag @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..7] add UtilKilled
execute if score $tp bounceID matches 1 store result score @a[tag=UtilKilled,distance=..7] KillerUUID run scoreboard players get @s playerUUID