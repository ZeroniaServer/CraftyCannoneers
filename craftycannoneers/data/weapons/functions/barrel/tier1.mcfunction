#> Blast slimes
execute if entity @a[gamemode=!spectator,distance=..8.25] run function weapons:barrel/summonslime

# Explosive effects
playsound blastbarrelexplode master @a ~ ~ ~ 5 1.6

#> Particles
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[team=!Lobby]
particle dust 1 0 0 2 ~ ~1 ~ 1 1 1 0 30 force @a[team=!Lobby]
particle cloud ~ ~1 ~ 1 1 1 0.3 10 force @a[team=!Lobby]
particle explosion ~ ~ ~ 1 1 1 0.1 12 force @a[team=!Lobby]

# Chain reaction
scoreboard players operation $tempuuid playerUUID = @s playerUUID
tag @a[predicate=game:matches_uuid,limit=1] add hitter
execute as @e[type=villager,tag=BlastBarrel,distance=..6] at @s run function weapons:barrel/punch
tag @a[tag=hitter,limit=1] remove hitter
scoreboard players set @e[type=armor_stand,tag=BlastBarrel,distance=..4] eyeclick 92

kill @s