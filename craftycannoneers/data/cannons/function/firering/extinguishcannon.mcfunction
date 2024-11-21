item replace entity @s container.0 with minecraft:diamond_hoe[custom_model_data={floats:[1.0f]}]
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.5 1
tag @s remove OnFire
tag @s remove ByLightning
setblock ^ ^1 ^2 air
execute at @e[type=item_display,tag=GPDispL,distance=..1.5,limit=1,sort=nearest] run data modify entity @e[type=interaction,tag=CannonVLeft,distance=..2,limit=1,sort=nearest] response set value 1b
execute at @e[type=item_display,tag=GPDispR,distance=..1.5,limit=1,sort=nearest] run data modify entity @e[type=interaction,tag=CannonVRight,distance=..2,limit=1,sort=nearest] response set value 1b
data modify entity @e[type=interaction,tag=CannonVMain,distance=..2,limit=1,sort=nearest] response set value 1b
scoreboard players reset @s[tag=!FireCannon,scores={firetime=1..}] firetime