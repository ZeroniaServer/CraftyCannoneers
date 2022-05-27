execute store result score $tempuuid playerUUID run scoreboard players get @s playerUUID
setblock ~ 384 ~ oak_sign
execute if entity @s[tag=Cannonball] as @a[predicate=game:matches_uuid] run data merge block ~ 384 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"},{"text":"\'s Cannonball"}]'}
execute if entity @s[tag=HotCannonball] as @a[predicate=game:matches_uuid] run data merge block ~ 384 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"},{"text":"\'s Hot Cannonball"}]'}
execute if entity @s[tag=ChainCannonball] as @a[predicate=game:matches_uuid] run data merge block ~ 384 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"},{"text":"\'s Chain Cannonball"}]'}
execute if entity @s[tag=GasCannonball] as @a[predicate=game:matches_uuid] run data merge block ~ 384 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"},{"text":"\'s Gas Cannonball"}]'}
execute if entity @s[tag=CannonballCluster] as @a[predicate=game:matches_uuid] run data merge block ~ 384 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[predicate=game:matches_uuid]"},{"text":"\'s Cannonball Cluster"}]'}
data modify entity @s CustomName set from block ~ 384 ~ Text2
setblock ~ 384 ~ air
scoreboard players reset $tempuuid playerUUID