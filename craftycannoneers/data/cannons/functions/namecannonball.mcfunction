execute store result score $tempuuid playerUUID run scoreboard players get @s playerUUID
setblock ~ 256 ~ oak_sign
execute if entity @s[tag=Cannonball] as @a[predicate=game:matches_uuid,limit=1] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.normal.possessive","with":[{"selector":"@a[limit=1,predicate=game:matches_uuid]"}]}]'
execute if entity @s[tag=HotCannonball] as @a[predicate=game:matches_uuid,limit=1] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.hot.possessive","with":[{"selector":"@a[limit=1,predicate=game:matches_uuid]"}]}]'
execute if entity @s[tag=ChainCannonball] as @a[predicate=game:matches_uuid,limit=1] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.chain.possessive","with":[{"selector":"@a[limit=1,predicate=game:matches_uuid]"}]}]'
execute if entity @s[tag=GasCannonball] as @a[predicate=game:matches_uuid,limit=1] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.gas.possessive","with":[{"selector":"@a[limit=1,predicate=game:matches_uuid]"}]}]'
execute if entity @s[tag=CannonballCluster] as @a[predicate=game:matches_uuid,limit=1] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.cluster.possessive","with":[{"selector":"@a[limit=1,predicate=game:matches_uuid]"}]}]'
execute if entity @s[tag=BouncyCannonball] as @a[predicate=game:matches_uuid,limit=1] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.bouncy.possessive","with":[{"selector":"@a[limit=1,predicate=game:matches_uuid]"}]}]'
execute if entity @s[tag=PlayerCannonball] as @a[predicate=game:matches_uuid,limit=1] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"selector":"@a[limit=1,predicate=game:matches_uuid]"}]'
execute if entity @s[tag=GoldenCannonball] as @a[predicate=game:matches_uuid,limit=1] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.golden.possessive","with":[{"selector":"@a[limit=1,predicate=game:matches_uuid]"}]}]'
execute if entity @s[tag=CopperCannonball] as @a[predicate=game:matches_uuid,limit=1] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.copper.possessive","with":[{"selector":"@a[limit=1,predicate=game:matches_uuid]"}]}]'
execute if entity @s[tag=TracerCannonball] as @a[predicate=game:matches_uuid,limit=1] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.tracer.possessive","with":[{"selector":"@a[limit=1,predicate=game:matches_uuid]"}]}]'
execute if entity @s[tag=Bomb] as @a[predicate=game:matches_uuid,limit=1] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"item.blast_bomb.possessive","with":[{"selector":"@a[limit=1,predicate=game:matches_uuid]"}]}]'
execute if entity @s[tag=GasPower] as @a[predicate=game:matches_uuid,limit=1] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"gas_explosion.possessive","with":[{"selector":"@a[limit=1,predicate=game:matches_uuid]"}]}]'

#> TODO remove? This is a failsafe in case the message is blank (would need to figure out what leads to the game forgetting who fired a Cannonball)
execute if entity @s[tag=Cannonball] unless entity @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.normal.generic"}]'
execute if entity @s[tag=HotCannonball] unless entity @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.hot.generic"}]'
execute if entity @s[tag=ChainCannonball] unless entity @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.chain.generic"}]'
execute if entity @s[tag=GasCannonball] unless entity @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.gas.generic"}]'
execute if entity @s[tag=CannonballCluster] unless entity @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.cluster.generic"}]'
execute if entity @s[tag=BouncyCannonball] unless entity @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.bouncy.generic"}]'
# execute if entity @s[tag=PlayerCannonball] unless entity @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '[""]'}
execute if entity @s[tag=GoldenCannonball] unless entity @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.golden.generic"}]'
execute if entity @s[tag=CopperCannonball] unless entity @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.copper.generic"}]'
execute if entity @s[tag=TracerCannonball] unless entity @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"cannonball.tracer"}]'
execute if entity @s[tag=Bomb] unless entity @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"item.blast_bomb.generic"}]'
execute if entity @s[tag=GasPower] unless entity @a[predicate=game:matches_uuid] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"translate":"gas_explosion.generic"}]'

data modify entity @s CustomName set from block ~ 256 ~ front_text.messages[0]
execute if entity @s[tag=PlayerCannonball] run data modify entity @e[type=slime,tag=PCannonballname,tag=New,limit=1,sort=nearest] CustomName set from entity @s CustomName
execute if entity @s[tag=PlayerCannonball] run tag @e[type=slime,tag=PCannonballname,tag=New,limit=1,sort=nearest] remove New
setblock ~ 256 ~ air
scoreboard players reset $tempuuid playerUUID