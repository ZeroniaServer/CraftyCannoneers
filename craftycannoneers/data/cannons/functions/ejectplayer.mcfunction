scoreboard players operation $currentpcb playerUUID = @s playerUUID

execute at @s as @a[team=!Lobby,team=!Spectator,team=!Developer,gamemode=spectator] if score @s playerUUID = $currentpcb playerUUID run function cannons:playereject

scoreboard players reset $currentpcb playerUUID

playsound playerbreak master @a ~ ~ ~ 1 1.3
particle block barrel ~ ~ ~ 0 0 0 1 60 force
particle cloud ~ ~ ~ 0.4 0.4 0.4 0.1 4 force

function cannons:playercbkill