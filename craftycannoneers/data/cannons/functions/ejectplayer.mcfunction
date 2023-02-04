scoreboard players operation $currentpcb playerUUID = @s playerUUID

execute at @s as @a[team=!Lobby,team=!Spectator,team=!Developer,gamemode=spectator] if score @s playerUUID = $currentpcb playerUUID run function cannons:playereject

scoreboard players reset $currentpcb playerUUID

playsound shipdamage1 master @a ~ ~ ~ 1 1.3
particle block barrel ~ ~ ~ 0 0 0 1 60 force
particle cloud ~ ~ ~ 0.4 0.4 0.4 0.1 4 force

kill @e[type=armor_stand,tag=PCannonballdeco,limit=1,sort=nearest,distance=..3]
execute as @e[type=slime,tag=PCannonballname,limit=1,sort=nearest,distance=..3] run function arenaclear:kill
kill @s