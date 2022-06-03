# summon temporary entity "in front of the player", if the player was standing at 0 0 0
execute positioned 0.0 0 0.0 run summon marker ^ ^ ^1 {Tags:["direction"]}

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

# clean up
kill @e[type=marker,tag=direction]
kill @e[type=llama,tag=myllama]