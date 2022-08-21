#> NoGravity + Marker application
data merge entity @s[tag=!nograv,nbt={OnGround:1b}] {NoGravity:1b,Marker:1b}
tag @s[tag=!nograv,nbt={OnGround:1b}] add nograv

#> Hurt Animation
execute at @s[tag=DummyHurtAnim] run function tutorial:trainingdummies/hurtanim

#> Dead Detection
execute unless entity @e[type=husk,tag=TDZombie,distance=..1] run tag @s add DummyDead
execute at @s[tag=DummyDead] run function tutorial:trainingdummies/dead