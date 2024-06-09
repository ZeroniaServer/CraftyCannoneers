tag @s add blaster
data modify entity @s CustomName set from storage craftycannoneers:temp CustomName
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..6] run damage @s 4.0 mob_attack by @e[type=slime,tag=blaster,limit=1]
tag @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..6] add UtilKilled
function arenaclear:kill