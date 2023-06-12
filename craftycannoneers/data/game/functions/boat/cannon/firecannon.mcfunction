#> Begin
scoreboard players add @s cannonshot 1
execute if entity @s[scores={cannonshot=1}] on passengers on passengers on passengers run item replace entity @s[type=husk] armor.head with mooshroom_spawn_egg{CustomModelData:12}
execute at @s[scores={cannonshot=1}] run playsound cannonload master @a ~ ~ ~ 1 1

#> Shoot
#TODO make fire time depend on gunpowder amount (PowerM score) - less gunpowder = quicker shot
execute store result score @s[scores={cannonshot=30..}] eyeclick run data get entity @s Rotation[0]
scoreboard players operation @s[scores={cannonshot=30..}] eyeclick /= 2 const
tag @s[scores={cannonshot=30..}] add Shoot
execute at @s[scores={cannonshot=30..}] positioned ^ ^2 ^3.6 run function game:boat/rotate/tree/root

#TODO polish cannonball trajectories @YZERO
#TODO sounds/particles @YZERO

#> Finish shooting
execute if entity @s[scores={cannonshot=30..}] run function game:boat/cannon/finishshoot