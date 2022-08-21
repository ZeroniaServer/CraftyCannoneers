data merge entity @e[type=villager,tag=CannonVLeft,distance=..1.5,limit=1,sort=nearest] {HasVisualFire:0b}
data merge entity @e[type=villager,tag=CannonVRight,distance=..1.5,limit=1,sort=nearest] {HasVisualFire:0b}
item replace entity @s armor.head with diamond_hoe{CustomModelData:1}
tag @s remove OnFire
scoreboard players reset @s[tag=!FireCannon,scores={firetime=1..}] firetime