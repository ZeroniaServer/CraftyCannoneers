# initialises transformation NBT in storage
data modify storage craftycannoneers:boat transformation set value {left_rotation:{axis:[0f,1f,0f],angle:0f},right_rotation:{axis:[1f,0f,0f],angle:0f}}

# calculates rotation transformation angles using yaw and pitch respectively.
execute store result storage craftycannoneers:boat transformation.left_rotation.angle float -0.00001745329251 run data get entity @s Rotation[0] 1000
execute store result storage craftycannoneers:boat transformation.right_rotation.angle float 0.00001745329251 run data get entity @s Rotation[1] 1000

# applies rotation transformations.
execute on passengers run data modify entity @s transformation merge from storage craftycannoneers:boat transformation
execute on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:2}

# resets entity rotation.
execute on passengers at @s run tp @s ~ ~ ~ 0 0