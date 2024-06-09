#> Initial Animation
data merge entity @s[tag=!init] {start_interpolation:0,interpolation_duration:3,transformation:{translation:[0.0f,1.8f,0.0f]}}
tag @s add init

#> Hurt Animation
execute at @s[tag=DummyHurtAnim] run function tutorial:trainingdummies/hurtanim

#> Dead Detection
execute unless entity @e[type=husk,tag=TDZombie,distance=..1] run tag @s add DummyDead
execute at @s[tag=DummyDead] run function tutorial:trainingdummies/dead