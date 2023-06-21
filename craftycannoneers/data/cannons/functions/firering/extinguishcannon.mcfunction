item replace entity @s container.0 with diamond_hoe{CustomModelData:1}
tag @s remove OnFire
setblock ^ ^1 ^2 air
scoreboard players reset @s[tag=!FireCannon,scores={firetime=1..}] firetime