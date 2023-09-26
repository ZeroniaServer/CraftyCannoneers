# summon temporary entity "in front of the player", if the player was standing at 0 0 0
playsound throwrock player @a ~ ~ ~ 1 0.5
execute if entity @s[x_rotation=0..30] run tag @s add above
execute if entity @s[x_rotation=30.000000000001..90] run tag @s add below
execute if entity @s[x_rotation=-180..-0.000000001] run tag @s add above
execute if entity @s[tag=above] positioned 0.0 0 0.0 run summon marker ^ ^ ^2.5 {Tags:["direction"]}
execute if entity @s[tag=below] positioned 0.0 0 0.0 run summon marker ^ ^ ^1 {Tags:["direction"]}
tag @s[tag=above] remove above
tag @s[tag=below] remove below

# summon the projectile entity - spectral arrow with 0 glowing + piercing
execute anchored eyes positioned ^ ^ ^0.1 run summon spectral_arrow ~ ~ ~ {Tags:["rock"],Duration:0,Silent:1b,SoundEvent:"entity.snowball.throw",PierceLevel:10}

# copy the markers position tag to the spit's motion tag
data modify entity @e[type=spectral_arrow,tag=rock,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos

# set up snowball
execute as @e[type=snowball,tag=!init,limit=1,sort=nearest] run data modify entity @s Motion set from entity @e[type=marker,tag=direction,limit=1] Pos
execute as @e[type=snowball,tag=!init,limit=1,sort=nearest] run function lobby:rock/init

# clean up
kill @e[type=marker,tag=direction]
scoreboard players reset @s throwsb