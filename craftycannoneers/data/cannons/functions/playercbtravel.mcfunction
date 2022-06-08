scoreboard players operation $currentpcb playerUUID = @s playerUUID

execute as @a if score @s playerUUID = $currentpcb playerUUID run tag @s add PlayerCannon

advancement grant @a[tag=PlayerCannon] only tutorial:zzzunlockables/playercannonball

execute as @a[tag=PlayerCannon,gamemode=!spectator] run gamemode spectator @s
spectate @s @a[tag=PlayerCannon,limit=1,sort=nearest]

execute as @a[tag=PlayerCannon,team=Purple] at @s run item replace entity @e[type=armor_stand,tag=PlayerCannonball,limit=1,sort=nearest] armor.head with diamond_hoe{CustomModelData:57}
execute as @a[tag=PlayerCannon,team=Purple] at @s run team join Purple @e[type=slime,tag=PCannonballname,limit=1,sort=nearest]
execute as @a[tag=PlayerCannon,team=Orange] at @s run item replace entity @e[type=armor_stand,tag=PlayerCannonball,limit=1,sort=nearest] armor.head with diamond_hoe{CustomModelData:58}
execute as @a[tag=PlayerCannon,team=Orange] at @s run team join Orange @e[type=slime,tag=PCannonballname,limit=1,sort=nearest]
execute as @a[tag=PlayerCannon] at @s run loot replace entity @e[type=armor_stand,tag=PCannonballdeco,limit=1,sort=nearest] armor.head loot cannons:playerhead
tag @a[tag=PlayerCannon] remove PlayerCannon

scoreboard players reset $currentpcb playerUUID