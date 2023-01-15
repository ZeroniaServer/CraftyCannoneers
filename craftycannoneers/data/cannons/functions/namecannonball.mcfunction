execute store result score $tempuuid playerUUID run scoreboard players get @s playerUUID
setblock ~ 256 ~ oak_sign
execute if entity @s[tag=Cannonball] as @a[predicate=game:matches_uuid] run data merge block ~ 256 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"},{"translate":"cannonball.normal.possessive"}]'}
execute if entity @s[tag=HotCannonball] as @a[predicate=game:matches_uuid] run data merge block ~ 256 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"},{"translate":"cannonball.hot.possessive"}]'}
execute if entity @s[tag=ChainCannonball] as @a[predicate=game:matches_uuid] run data merge block ~ 256 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"},{"translate":"cannonball.chain.possessive"}]'}
execute if entity @s[tag=GasCannonball] as @a[predicate=game:matches_uuid] run data merge block ~ 256 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"},{"translate":"cannonball.gas.possessive"}]'}
execute if entity @s[tag=CannonballCluster] as @a[predicate=game:matches_uuid] run data merge block ~ 256 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"},{"translate":"cannonball.cluster.possessive"}]'}
execute if entity @s[tag=BouncyCannonball] as @a[predicate=game:matches_uuid] run data merge block ~ 256 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"},{"translate":"cannonball.bouncy.possessive"}]'}
execute if entity @s[tag=PlayerCannonball] as @a[predicate=game:matches_uuid] run data merge block ~ 256 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"}]'}
execute if entity @s[tag=GoldenCannonball] as @a[predicate=game:matches_uuid] run data merge block ~ 256 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"},{"translate":"cannonball.golden.possessive"}]'}
execute if entity @s[tag=TracerCannonball] as @a[predicate=game:matches_uuid] run data merge block ~ 256 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"},{"translate":"cannonball.tracer.possessive"}]'}
execute if entity @s[tag=Bomb] as @a[predicate=game:matches_uuid] run data merge block ~ 256 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"},{"translate":"item.blast_bomb.possessive"}]'}
execute if entity @s[tag=GasPower] as @a[predicate=game:matches_uuid] run data merge block ~ 256 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"},{"translate":"gas_explosion.possessive"}]'}
data modify entity @s CustomName set from block ~ 256 ~ Text2
execute if entity @s[tag=PlayerCannonball] run data modify entity @e[type=slime,tag=PCannonballname,tag=New,limit=1,sort=nearest] CustomName set from entity @s CustomName
execute if entity @s[tag=PlayerCannonball] run tag @e[type=slime,tag=PCannonballname,tag=New,limit=1,sort=nearest] remove New
setblock ~ 256 ~ air
scoreboard players reset $tempuuid playerUUID