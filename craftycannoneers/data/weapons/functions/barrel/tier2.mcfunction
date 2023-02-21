#> Blast slimes
function weapons:barrel/summonslime

# Explosive effects
playsound blastbarrelexplode master @a ~ ~ ~ 5 1.4

#> Particles
particle flash ~ ~1 ~ 0 0 0 0 2 force @a[team=!Lobby]
particle dust 1 0 0 2 ~ ~1 ~ 3 3 3 0 40 force @a[team=!Lobby]
particle cloud ~ ~1 ~ 3 3 3 0.3 30 force @a[team=!Lobby]
particle explosion ~ ~ ~ 3 3 3 0.1 40 force @a[team=!Lobby]
particle lava ~ ~ ~ 3 3 3 0.1 30 force @a[team=!Lobby]

# Chain reaction
scoreboard players operation $tempuuid playerUUID = @s playerUUID
tag @a[predicate=game:matches_uuid,limit=1] add hitter
execute as @e[type=villager,tag=BlastBarrel,distance=..6] at @s run function weapons:barrel/punch
tag @a[tag=hitter,limit=1] remove hitter
scoreboard players set @e[type=armor_stand,tag=BlastBarrel,distance=..5] eyeclick 92

kill @s