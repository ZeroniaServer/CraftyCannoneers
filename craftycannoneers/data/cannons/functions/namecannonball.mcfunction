execute store result score $tempuuid playerUUID run scoreboard players get @s playerUUID
setblock ~ 256 ~ oak_sign
execute if entity @s[tag=Cannonball] as @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"selector":"@p[predicate=game:matches_uuid]"},{"text":"\'s Cannonball"}]'
execute if entity @s[tag=HotCannonball] as @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"selector":"@p[predicate=game:matches_uuid]"},{"text":"\'s Hot Cannonball"}]'
execute if entity @s[tag=ChainCannonball] as @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"selector":"@p[predicate=game:matches_uuid]"},{"text":"\'s Chain Cannonball"}]'
execute if entity @s[tag=GasCannonball] as @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"selector":"@p[predicate=game:matches_uuid]"},{"text":"\'s Gas Cannonball"}]'
execute if entity @s[tag=CannonballCluster] as @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"selector":"@p[predicate=game:matches_uuid]"},{"text":"\'s Cannonball Cluster"}]'
execute if entity @s[tag=BouncyCannonball] as @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"selector":"@p[predicate=game:matches_uuid]"},{"text":"\'s Bouncy Cannonball"}]'
execute if entity @s[tag=PlayerCannonball] as @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"selector":"@p[predicate=game:matches_uuid]"}]'
execute if entity @s[tag=GoldenCannonball] as @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"selector":"@p[predicate=game:matches_uuid]"},{"text":"\'s Golden Cannonball"}]'
execute if entity @s[tag=TracerCannonball] as @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"selector":"@p[predicate=game:matches_uuid]"},{"text":"\'s Tracer Cannonball"}]'
execute if entity @s[tag=Bomb] as @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"selector":"@p[predicate=game:matches_uuid]"},{"text":"\'s Blast Bomb"}]'
execute if entity @s[tag=GasPower] as @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"selector":"@p[predicate=game:matches_uuid]"},{"text":"\'s Gas Explosion"}]'
data modify entity @s CustomName set from block ~ 256 ~ front_text.messages[0]
execute if entity @s[tag=PlayerCannonball] run data modify entity @e[type=slime,tag=PCannonballname,tag=New,limit=1,sort=nearest] CustomName set from entity @s CustomName
execute if entity @s[tag=PlayerCannonball] run tag @e[type=slime,tag=PCannonballname,tag=New,limit=1,sort=nearest] remove New
setblock ~ 256 ~ air
scoreboard players reset $tempuuid playerUUID