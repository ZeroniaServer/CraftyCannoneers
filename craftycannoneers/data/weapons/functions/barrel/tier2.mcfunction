#> Ship detection
tag @s remove canDamage
execute if predicate cannons:ships/orange run tag @s add canDamage
execute if predicate cannons:ships/purple run tag @s add canDamage

#> Blast slimes
execute if entity @a[gamemode=!spectator,distance=..8.25] run function weapons:barrel/summonslime

#> Cannonball Explosion
execute if predicate cannons:ships/orange run tag @s add canDamage
execute if predicate cannons:ships/purple run tag @s add canDamage
execute if entity @s[tag=canDamage] run function weapons:barrel/summonimpact

#> Particles/sounds
playsound blastbarrelexplode master @a ~ ~ ~ 5 1.4
particle flash ~ ~1 ~ 0 0 0 0 2 force @a[team=!Lobby]
particle dust 1 0 0 2 ~ ~1 ~ 3 3 3 0 40 force @a[team=!Lobby]
particle cloud ~ ~1 ~ 3 3 3 0.3 30 force @a[team=!Lobby]
execute unless entity @s[tag=canDamage] run particle explosion ~ ~ ~ 3 3 3 0.1 40 force @a[team=!Lobby]
particle lava ~ ~ ~ 3 3 3 0.1 30 force @a[team=!Lobby]

# Chain reaction
scoreboard players operation $tempuuid playerUUID = @s playerUUID
data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute as @e[type=villager,tag=BlastBarrel,distance=..6] at @s run function weapons:barrel/chainreact
execute as @e[type=armor_stand,tag=BlastBarrel,scores={CmdData=1..},distance=..6] unless score @s eyeclick matches 1.. run scoreboard players set @s eyeclick 92

kill @s