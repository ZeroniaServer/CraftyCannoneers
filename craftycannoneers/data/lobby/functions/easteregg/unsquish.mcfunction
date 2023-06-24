data modify entity @s transformation.scale[1] set value 0.4375f
data modify entity @s transformation.translation[1] set value 0f
data merge entity @s {start_interpolation:0,interpolation_duration:2}
execute if entity @s[tag=PlanetaryGun] run scoreboard players set $planetary CmdData 0
