scoreboard players operation $currentpcb playerUUID = @s playerUUID
execute at @s as @a[team=!Lobby,team=!Spectator,team=!Developer,gamemode=spectator] if score @s playerUUID = $currentpcb playerUUID run function cannons:playereject
scoreboard players reset $currentpcb playerUUID
tag @s add ejected