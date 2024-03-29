scoreboard players add @s death 1

execute at @s[scores={death=6}] run playsound block.fire.ambient master @a ~ ~ ~ 1 2
execute at @s run particle flame ~ ~0.7 ~ 0.3 0.3 0.3 0.1 2 force @a[predicate=cannons:seeparticles]
execute at @s if score @s playerUUID matches -2147483648.. run scoreboard players operation @e[type=item_display,tag=GasBubble,tag=!GasIgnite,distance=..6] playerUUID = @s playerUUID
execute at @s run tag @e[type=item_display,tag=GasBubble,tag=!GasIgnite,distance=..6] add GasIgnite
execute at @s[scores={death=15..}] if score @s playerUUID matches -2147483648.. run scoreboard players operation @e[type=marker,tag=GasCloud,distance=..4] playerUUID = @s playerUUID
execute at @s[scores={death=15..}] run tag @e[type=marker,tag=GasCloud,distance=..7] add GasExplode

execute at @s[scores={death=5}] run particle explosion ~ ~0.6 ~ 0 0 0 0 3 force @a[predicate=cannons:seeparticles]
execute at @s run particle flame ~ ~0.6 ~ 0 0 0 0.1 1 force @a[predicate=cannons:seeparticles]

execute if score @s death matches 15.. on passengers run kill @s
kill @s[scores={death=15..}]