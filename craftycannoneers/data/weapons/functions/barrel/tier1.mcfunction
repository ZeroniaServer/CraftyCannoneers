#> Blast slimes
execute if entity @a[gamemode=!spectator,distance=..8.25] run function weapons:barrel/summonslime

#> Particles/sounds
playsound blastbarrelexplode master @a ~ ~ ~ 5 1.6
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[team=!Lobby]
particle dust 1 0 0 2 ~ ~1 ~ 1 1 1 0 30 force @a[team=!Lobby]
particle cloud ~ ~1 ~ 1 1 1 0.3 10 force @a[team=!Lobby]
particle explosion ~ ~ ~ 1 1 1 0.1 12 force @a[team=!Lobby]

# Chain reaction
scoreboard players operation $tempuuid playerUUID = @s playerUUID
data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute as @e[type=villager,tag=BlastBarrel,distance=..5] at @s run function weapons:barrel/chainreact
execute as @e[type=armor_stand,tag=BlastBarrel,scores={CmdData=1..},distance=..5] unless score @s eyeclick matches 1.. run scoreboard players set @s eyeclick 92

kill @s