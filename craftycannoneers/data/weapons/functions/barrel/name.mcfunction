tag @s add IgniteBarrel
execute store result score @s playerUUID run data get entity @a[tag=hitter,limit=1] UUID[0]
setblock ~ 256 ~ oak_sign
execute as @a[tag=hitter,limit=1] run data merge block ~ 256 ~ {Text2:'["",{"translate":"item.blast_barrel.possessive","with":[{"selector":"@a[limit=1,predicate=game:matches_uuid]"}]}]'}
execute unless entity @a[tag=hitter,limit=1] run data merge block ~ 256 ~ {Text2:'["",{"translate":"item.blast_barrel"}]'}
data modify entity @s CustomName set from block ~ 256 ~ Text2
setblock ~ 256 ~ air