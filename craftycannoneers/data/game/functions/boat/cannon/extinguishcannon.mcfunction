tag @s remove OnFire
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.5 1
function game:boat/cannon/updategunpowder
scoreboard players reset @s[tag=!FireCannon,scores={firetime=1..}] firetime