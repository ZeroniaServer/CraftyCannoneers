execute unless predicate cannons:safezones/island unless predicate cannons:safezones/lobby at @s run function cannons:lightfill1

function cannons:spawncreeper

execute at @s[tag=HitWeakpointOrange,tag=!WeakpointAnnounced] run function cannons:hitweakpointorange
execute at @s[tag=HitWeakpointPurple,tag=!WeakpointAnnounced] run function cannons:hitweakpointpurple
execute at @s[tag=HitWeakpointFake,tag=!WeakpointAnnounced] run function cannons:hitweakpointfake

tag @s add currImpactMarker
tag @s add calcingDamage

execute if score $debugdamage CmdData matches 1 run tellraw @a [{text:"preexplode "},{score:{name:"@s",objective:"CalcAir1"}}]

execute as @r run function cannons:postexplodetrigger