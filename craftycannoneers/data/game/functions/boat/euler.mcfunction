# initialises transformation NBT in storage
data modify storage craftycannoneers:boat transformation set value {left_rotation:{axis:[0f,1f,0f],angle:0f},right_rotation:{axis:[1f,0f,0f],angle:0f}}

# save brightness
data modify storage craftycannoneers:boat brightness set from entity @s brightness

# calculates rotation transformation angles using yaw and pitch respectively.
execute store result storage craftycannoneers:boat transformation.left_rotation.angle float -0.00001745329251 run data get entity @s Rotation[0] 1000
execute store result storage craftycannoneers:boat transformation.right_rotation.angle float 0.00001745329251 run data get entity @s Rotation[1] 1000

# applies rotation transformations.
execute on passengers run data modify entity @s transformation merge from storage craftycannoneers:boat transformation
execute if score $lighting CmdData matches 1 on passengers run data modify entity @s[tag=BoatCannonDisplay] brightness merge from storage craftycannoneers:boat brightness
execute unless score $lighting CmdData matches 1 on passengers run data remove entity @s[tag=BoatCannonDisplay] brightness
execute on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:2}

# resets entity rotation.
execute on passengers at @s run tp @s ~ ~ ~ 0 0