execute at @s if entity @a[team=!Lobby,team=!Spectator,distance=..7] if entity @e[type=marker,tag=GasCloud,distance=..4] run tag @a[team=!Lobby,team=!Spectator,distance=..7,limit=1,sort=nearest] add GasChase
execute at @s if entity @a[team=!Lobby,team=!Spectator,distance=..7] if entity @e[type=marker,tag=GasCloud,distance=..4] run tag @s add HasPlayer
execute at @s[tag=HasPlayer] store result score @s ChaseUUID run scoreboard players get @p[tag=GasChase] playerUUID
execute at @s[tag=HasPlayer] store result score $current ChaseUUID run scoreboard players get @s ChaseUUID
execute at @s as @e[type=armor_stand,tag=GasBubble,distance=0.001..8] if score @s ChaseUUID = $current ChaseUUID run tag @s remove HasPlayer
execute at @s as @e[type=armor_stand,tag=GasBubble,distance=0.001..8] if score @s ChaseUUID = $current ChaseUUID run scoreboard players reset @s ChaseUUID

execute at @s[tag=HasPlayer] on passengers at @s facing entity @p[tag=GasChase] eyes on vehicle positioned as @s if entity @e[type=marker,tag=GasCloud,distance=..7] run tp @s ~ ~ ~ ~ ~
execute at @s[tag=HasPlayer] if entity @e[type=marker,tag=GasCloud,distance=..7] run tp @s ^ ^ ^0.08
execute rotated as @s on passengers positioned as @s run tp @s ~ ~ ~ ~ ~

tag @a[tag=GasChase] remove GasChase
scoreboard players reset $current ChaseUUID