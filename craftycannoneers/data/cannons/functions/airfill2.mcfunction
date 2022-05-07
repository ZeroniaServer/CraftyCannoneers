execute as @s at @s store result score @s CalcAir2 run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace light[level=0]

scoreboard players operation @s CalcAir2 -= @s CalcAir1
execute if entity @s run tellraw @a ["",{"text":"Damage Dealt: ","color":"green"},{"score":{"name":"@s","objective":"CalcAir2"},"bold":true,"color":"dark_green"}]

scoreboard players reset @s CalcAir1
scoreboard players reset @s CalcAir2
tag @s remove DidDamage