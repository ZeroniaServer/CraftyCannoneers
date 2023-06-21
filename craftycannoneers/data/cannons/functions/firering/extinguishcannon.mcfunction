data merge entity @e[type=interaction,tag=CannonVLeft,distance=..1.5,limit=1,sort=nearest] {HasVisualFire:0b}
data merge entity @e[type=interaction,tag=CannonVRight,distance=..1.5,limit=1,sort=nearest] {HasVisualFire:0b}
item replace entity @s container.0 with diamond_hoe{CustomModelData:1}
tag @s remove OnFire
setblock ^ ^1 ^2 air
scoreboard players reset @s[tag=!FireCannon,scores={firetime=1..}] firetime