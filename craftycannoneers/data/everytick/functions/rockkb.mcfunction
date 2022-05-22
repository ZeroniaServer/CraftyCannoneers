summon llama ~ -64 ~ {Tags:["myllama"],Silent:1b,Invulnerable:1b}
data modify entity @e[type=llama,tag=myllama,limit=1] Rotation set from entity @s data.OwnerRotation
execute unless entity @e[type=snowball,tag=pair] positioned as @p[team=!Spectator,team=!Lobby,tag=!thrower,distance=..3] run summon llama_spit ~ ~2.1 ~ {Tags:["myspit"]}
data modify entity @e[type=llama_spit,tag=myspit,limit=1] Owner set from entity @e[type=llama,tag=myllama,limit=1] UUID
data modify entity @e[type=llama_spit,tag=myspit,limit=1] Motion set from entity @s data.Motion
data modify entity @e[type=llama_spit,tag=myspit,limit=1] Rotation set from entity @s data.Rotation
kill @e[type=llama,tag=myllama]
tag @e[type=llama_spit,tag=myspit] remove myspit