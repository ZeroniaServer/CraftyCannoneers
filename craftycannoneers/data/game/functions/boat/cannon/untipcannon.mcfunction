execute on passengers run data merge entity @s[tag=BoatCannonBarrel] {transformation:{translation:[0f,2.375f,0.425f],left_rotation:[0f,0f,0f,1f]},start_interpolation:0,interpolation_duration:3}
execute on passengers on passengers run tag @s[type=camel] add temp
execute on passengers on passengers run ride @s[type=camel] dismount
ride @e[type=camel,tag=temp,limit=1] mount @s
execute on passengers run tag @s remove temp
tag @s remove tipped