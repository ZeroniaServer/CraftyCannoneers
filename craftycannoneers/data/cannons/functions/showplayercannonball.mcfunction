execute unless entity @a[tag=PlayerCannon,limit=1] run item replace entity @s[tag=!vacant] armor.head with diamond_hoe{CustomModelData:106}
execute unless entity @a[tag=PlayerCannon,limit=1] run item replace entity @e[type=armor_stand,tag=PCannonballdeco,limit=1,sort=nearest] armor.head with air
execute unless entity @a[tag=PlayerCannon,limit=1] at @s[tag=!vacant] run data modify entity @e[type=slime,tag=PCannonballname,limit=1,sort=nearest] CustomNameVisible set value 0b
execute unless entity @a[tag=PlayerCannon,limit=1] at @s[tag=!vacant] run data modify entity @e[type=slime,tag=PCannonballname,limit=1,sort=nearest] CustomName set value ''
execute unless entity @a[tag=PlayerCannon,limit=1] run tag @s[tag=!vacant] add vacant

execute if entity @a[tag=PlayerCannon,team=Purple,limit=1] run item replace entity @s[tag=!occupied,tag=!vacant] armor.head with diamond_hoe{CustomModelData:57}
execute if entity @a[tag=PlayerCannon,team=Orange,limit=1] run item replace entity @s[tag=!occupied,tag=!vacant] armor.head with diamond_hoe{CustomModelData:58}
execute as @a[tag=PlayerCannon,limit=1] at @s[tag=!occupied,tag=!vacant] run loot replace entity @e[type=armor_stand,tag=PCannonballdeco,limit=1,sort=nearest] armor.head loot cannons:playerhead
execute if entity @a[tag=PlayerCannon,limit=1] at @s[tag=!occupied,tag=!vacant] run data modify entity @e[type=slime,tag=PCannonballname,limit=1,sort=nearest] CustomNameVisible set value 1b
execute if entity @a[tag=PlayerCannon,limit=1] run tag @s[tag=!occupied,tag=!vacant] add occupied