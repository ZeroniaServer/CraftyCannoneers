scoreboard players add @s cannonshot 1
execute if entity @s[scores={cannonshot=1}] on passengers on passengers on passengers run item replace entity @s[type=husk] armor.head with mooshroom_spawn_egg{CustomModelData:12}
execute at @s[scores={cannonshot=1}] run playsound cannonload master @a ~ ~ ~ 1 1

#> TODO write this part

#> TODO add rotated summon commands for every cannonball type O_O