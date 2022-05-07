function cannons:airfill
scoreboard players operation @s CalcAir2 -= @s CalcAir1
execute if entity @s[scores={CalcAir2=0..}] run tellraw @a ["",{"text":"Damage Dealt: ","color":"green"},{"score":{"name":"@s","objective":"CalcAir2"},"bold":true,"color":"dark_green"}]
scoreboard players reset @s CalcAir1
scoreboard players reset @s CalcAir2

kill @s