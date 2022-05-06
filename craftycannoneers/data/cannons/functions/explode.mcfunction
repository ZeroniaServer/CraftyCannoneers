execute as @s[tag=!Hit1] at @s run fill ~ ~-1 ~ ~ ~-1 ~ air replace #game:shipblocks
execute as @s[tag=!Hit1] at @s run fill ^1 ^1 ^1 ^-1 ^-1 ^1 air replace #game:shipblocks

execute as @s at @s run tp @s ^ ^ ^1
#>Safezone check
#Cannons
execute as @s at @s if entity @e[tag=cannon,distance=..2] run tag @s add InSafezone
#Purple
execute as @s at @s if entity @s[predicate=cannons:safezones/purple/1] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/purple/2] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/purple/3] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/purple/4] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/purple/5] run tag @s add InSafezone
#Orange
execute as @s at @s if entity @s[predicate=cannons:safezones/orange/1] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/orange/2] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/orange/3] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/orange/4] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/orange/5] run tag @s add InSafezone

#FIREBALL EFFECT
execute as @s[tag=!InSafezone,tag=!Hit1,tag=HotCannonball] at @s run summon marker ~ ~ ~ {Tags:["RingOfFire"]}

execute as @s[tag=InSafezone] at @s run summon creeper ^ ^ ^1 {Tags:["CannonballCreeper"],Invulnerable:1b,Fuse:0,ExplosionRadius:1}
execute as @s[tag=!InSafezone,tag=!Hit1] at @s run summon creeper ^ ^ ^1 {Tags:["CannonballCreeper"],Invulnerable:1b,Fuse:0,ExplosionRadius:3}
execute as @s[tag=!InSafezone,tag=Hit1] at @s run summon creeper ^ ^ ^1 {Tags:["CannonballCreeper"],Invulnerable:1b,Fuse:0,ExplosionRadius:2}
execute as @s[tag=!Hit1] at @s run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute as @s[tag=Hit1] at @s run playsound shipdamage1 master @a ~ ~ ~ 2 1
tag @s[tag=Hit1] add Hit2
tag @s add Hit1

kill @s[tag=Hit2]