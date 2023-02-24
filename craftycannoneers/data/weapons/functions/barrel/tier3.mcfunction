#> Ship Detection
tag @s remove canDamage
execute if predicate cannons:ships/orange run tag @s add canDamage
execute if predicate cannons:ships/purple run tag @s add canDamage

#> Blast slimes
execute if entity @a[gamemode=!spectator,distance=..8.25] run function weapons:barrel/summonslime

#> Cannonball Explosion
execute if entity @s[tag=canDamage] run function weapons:barrel/summonimpact

#> Particles/sounds
playsound blastbarrelexplode master @a ~ ~ ~ 5 1
particle flash ~ ~6 ~ 0 2 0 0 12 force @a[team=!Lobby]
particle dust 1 0 0 2 ~ ~6 ~ 2 4 2 0 40 force @a[team=!Lobby]
particle cloud ~ ~6 ~ 2 4 2 0.3 20 force @a[team=!Lobby]
execute unless entity @s[tag=canDamage] run particle explosion ~ ~5 ~ 2 4 2 0.1 25 force @a[team=!Lobby]
particle lava ~ ~5 ~ 2 4 2 0.1 30 force @a[team=!Lobby]
summon marker ~ ~1 ~ {Tags:["BarrelMaxFX","BlastBarrel","North","EW"],Rotation:[90.0f,0.0f]}
summon marker ~ ~1 ~ {Tags:["BarrelMaxFX","BlastBarrel","East","NS"],Rotation:[-90.0f,0.0f]}
summon marker ~ ~1 ~ {Tags:["BarrelMaxFX","BlastBarrel","South","EW"],Rotation:[180.0f,0.0f]}
summon marker ~ ~1 ~ {Tags:["BarrelMaxFX","BlastBarrel","West","NS"],Rotation:[0.0f,0.0f]}

# Chain reaction
scoreboard players operation $tempuuid playerUUID = @s playerUUID
tag @a[predicate=game:matches_uuid,limit=1] add hitter
execute as @e[type=villager,tag=BlastBarrel,distance=..7] at @s run function weapons:barrel/punch
tag @a[tag=hitter,limit=1] remove hitter
scoreboard players set @e[type=armor_stand,tag=BlastBarrel,scores={CmdData=1..},distance=..7] eyeclick 92

kill @s