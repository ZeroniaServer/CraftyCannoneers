# summon temporary entity "in front of the player", if the player was standing at 0 0 0
execute if entity @s[x_rotation=0..30] run tag @s add above
execute if entity @s[x_rotation=30.000000000001..90] run tag @s add below
execute if entity @s[x_rotation=-180..-0.000000001] run tag @s add above
execute if entity @s[tag=above] positioned 0.0 0 0.0 run summon marker ^ ^ ^2.5 {Tags:["direction"]}
execute if entity @s[tag=below] positioned 0.0 0 0.0 run summon marker ^ ^ ^1 {Tags:["direction"]}
tag @s[tag=above] remove above
tag @s[tag=below] remove below

# summon the projectile entity
execute anchored eyes positioned ^ ^ ^1 run summon llama_spit ~ ~ ~ {Tags:["rock"]}
execute anchored eyes positioned ^ ^ ^0.1 run summon llama_spit ~ ~ ~ {Tags:["rock2"]}

# summon temporary llama and copy rotation
execute positioned ~ -100 ~ run summon llama ~ ~ ~ {Tags:["myllama"]}
data modify entity @e[type=llama,tag=myllama,limit=1] Rotation set from entity @s Rotation
data modify entity @e[type=llama_spit,tag=rock,limit=1] Owner set from entity @e[type=llama,tag=myllama,limit=1] UUID
data modify entity @e[type=llama_spit,tag=rock2,limit=1] Owner set from entity @e[type=llama,tag=myllama,limit=1] UUID

# copy the markers position tag to the spit's motion tag
data modify entity @e[type=llama_spit,tag=rock,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos
data modify entity @e[type=llama_spit,tag=rock2,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos

# set up snowball
execute as @e[type=snowball,tag=!init,limit=1,sort=nearest] run data modify entity @s Motion set from entity @e[type=marker,tag=direction,limit=1] Pos
# data modify entity @e[type=snowball,tag=!init,limit=1,sort=nearest] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos
# data modify entity @e[type=snowball,tag=!init,limit=1,sort=nearest] LeftOwner set value 0
execute as @e[type=snowball,tag=!init,limit=1,sort=nearest] run function lobby:rock/init

# clean up
kill @e[type=marker,tag=direction]
kill @e[type=llama,tag=myllama]
scoreboard players reset @s throwsb