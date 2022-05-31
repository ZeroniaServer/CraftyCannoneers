scoreboard players operation $currentpcb playerUUID = @s playerUUID

execute as @a if score @s playerUUID = $currentpcb playerUUID run tag @s add PlayerCannon

execute as @a[tag=PlayerCannon,gamemode=!spectator] run gamemode spectator @s
spectate @s @a[tag=PlayerCannon,limit=1,sort=nearest]

execute as @a[tag=PlayerCannon,team=Purple] at @s run item replace entity @e[tag=PlayerCannonball,limit=1,sort=nearest] armor.head with diamond_hoe{CustomModelData:57}
execute as @a[tag=PlayerCannon,team=Orange] at @s run item replace entity @e[tag=PlayerCannonball,limit=1,sort=nearest] armor.head with diamond_hoe{CustomModelData:58}
execute as @a[tag=PlayerCannon] at @s run loot replace entity @e[tag=PCannonballdeco,limit=1,sort=nearest] armor.head loot cannons:playerhead
tag @a[tag=PlayerCannon] remove PlayerCannon

scoreboard players reset $currentpcb playerUUID