execute at @s if entity @a[team=!Lobby,team=!Spectator,distance=..7] if entity @e[type=marker,tag=GasCloud,distance=..4] run tag @a[team=!Lobby,team=!Spectator,distance=..7,limit=1,sort=nearest] add GasChase
execute at @s if entity @a[tag=GasChase,limit=1] if entity @e[type=marker,tag=GasCloud,distance=..4] run tag @s add HasPlayer
execute at @s[tag=HasPlayer] store result score @s ChaseUUID run scoreboard players get @a[tag=GasChase,limit=1] playerUUID
scoreboard players operation $current ChaseUUID = @s[tag=HasPlayer] ChaseUUID
execute at @s as @e[type=item_display,tag=GasBubble,distance=0.001..8] if score @s ChaseUUID = $current ChaseUUID run tag @s remove HasPlayer
execute at @s as @e[type=item_display,tag=GasBubble,distance=0.001..8] if score @s ChaseUUID = $current ChaseUUID run scoreboard players reset @s ChaseUUID
scoreboard players reset $current ChaseUUID

execute at @s[tag=HasPlayer] facing entity @a[tag=GasChase,limit=1] eyes if entity @e[type=marker,tag=GasCloud,distance=..7] run tp @s ~ ~ ~ ~ ~
execute at @s[tag=HasPlayer] if entity @e[type=marker,tag=GasCloud,distance=..7] run tp @s ^ ^ ^0.08

tag @a[tag=GasChase] remove GasChase
scoreboard players reset $current ChaseUUID