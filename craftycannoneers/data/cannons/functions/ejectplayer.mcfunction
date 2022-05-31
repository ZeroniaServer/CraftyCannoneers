scoreboard players operation $currentpcb playerUUID = @s playerUUID

execute as @a if score @s playerUUID = $currentpcb playerUUID run tag @s add PlayerEject

scoreboard players reset $currentpcb playerUUID




playsound shipdamage1 master @a ~ ~ ~ 1 1.3
particle block barrel ~ ~ ~ 0.4 0.4 0.4 0.1 30 force
particle cloud ~ ~ ~ 0.4 0.4 0.4 0.1 4 force

effect give @a[team=!Lobby,team=!Spectator,gamemode=spectator,tag=PlayerEject] resistance 1 100 true
effect give @a[team=!Lobby,team=!Spectator,gamemode=spectator,tag=PlayerEject] blindness 1 100 true
effect give @a[team=!Lobby,team=!Spectator,gamemode=spectator,tag=PlayerEject] weakness 1 100 true
tp @a[team=!Lobby,team=!Spectator,gamemode=spectator,tag=PlayerEject] ^ ^ ^1
gamemode adventure @a[team=!Lobby,team=!Spectator,gamemode=spectator,tag=PlayerEject]

kill @e[type=armor_stand,tag=PCannonballdeco,limit=1,sort=nearest,distance=..3]
kill @s

tag @a[tag=PlayerEject] remove PlayerEject