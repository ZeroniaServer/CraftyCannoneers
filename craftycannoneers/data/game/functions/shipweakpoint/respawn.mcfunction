execute if entity @s[tag=Purple] run tag @e[type=marker,tag=ImpactMarker,limit=1,sort=nearest] add HitWeakpointPurple
execute if entity @s[tag=Purple,tag=Spotted] run tag @e[type=marker,tag=ImpactMarker,limit=1,sort=nearest] add HitSpotted

execute if entity @s[tag=Orange] run tag @e[type=marker,tag=ImpactMarker,limit=1,sort=nearest] add HitWeakpointOrange
execute if entity @s[tag=Orange,tag=Spotted] run tag @e[type=marker,tag=ImpactMarker,limit=1,sort=nearest] add HitSpotted

tag @s add WeakpointDamaged
tag @s remove respawn