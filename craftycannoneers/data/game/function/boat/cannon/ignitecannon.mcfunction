tag @s[tag=!FireCannon,scores={PowerM=1..}] add Recoil
execute on passengers run item replace entity @s[tag=BoatCannonBarrel] container.0 with diamond_hoe[custom_model_data={floats:[132.0f]}]
execute unless score @s PowerM matches 1.. if entity @s[tag=!tipped] run function game:boat/cannon/tipfire
playsound ignitecannon master @a ~ ~ ~ 0.75 0.5