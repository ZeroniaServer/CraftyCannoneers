scoreboard players operation $currentpcb playerUUID = @s playerUUID

execute as @a if score @s playerUUID = $currentpcb playerUUID run tag @s add PlayerEject

scoreboard players reset $currentpcb playerUUID

playsound shipdamage1 master @a ~ ~ ~ 1 1.3
particle block barrel ~ ~ ~ 0 0 0 1 60 force
particle cloud ~ ~ ~ 0.4 0.4 0.4 0.1 4 force

effect give @a[team=!Lobby,team=!Spectator,team=!Developer,gamemode=spectator,tag=PlayerEject] resistance 1 100 true
effect give @a[team=!Lobby,team=!Spectator,team=!Developer,gamemode=spectator,tag=PlayerEject] blindness 1 100 true
effect give @a[team=!Lobby,team=!Spectator,team=!Developer,gamemode=spectator,tag=PlayerEject] weakness 1 100 true
tp @a[team=!Lobby,team=!Spectator,team=!Developer,gamemode=spectator,tag=PlayerEject] ^ ^ ^-0.2
tag @a[team=!Lobby,team=!Spectator,team=!Developer,gamemode=spectator,tag=PlayerEject] remove InPlayerCB
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,gamemode=spectator,tag=PlayerEject] run gamemode adventure

kill @e[type=armor_stand,tag=PCannonballdeco,limit=1,sort=nearest,distance=..3]
data merge entity @e[type=slime,tag=PCannonballname,limit=1,sort=nearest,distance=..3] {DeathTime:19s}
tp @e[type=slime,tag=PCannonballname,limit=1,sort=nearest,distance=..3] ~ -200 ~
kill @s

tag @a[tag=PlayerEject] remove PlayerEject