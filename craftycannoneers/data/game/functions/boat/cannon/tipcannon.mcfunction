execute on passengers run data merge entity @s[tag=BoatCannonBarrel] {transformation:{translation:[0f,2.635f,1.148f],left_rotation:[0.189f,0f,0f,0.982f]},start_interpolation:0,interpolation_duration:3}
execute on passengers run tag @s[type=camel] add temp
execute on passengers run ride @s[type=camel] dismount
execute on passengers run ride @e[type=camel,tag=temp,limit=1] mount @s[type=villager]
execute on passengers on passengers run tag @s remove temp
tag @s add tipped