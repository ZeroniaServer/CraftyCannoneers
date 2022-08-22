execute if entity @s[tag=!WeakpointDamaged,tag=Purple] run tag @e[type=marker,tag=ImpactMarker,limit=1,sort=nearest] add HitWeakpointPurple
execute if entity @s[tag=!WeakpointDamaged,tag=Purple,tag=Spotted] run tag @e[type=marker,tag=ImpactMarker,limit=1,sort=nearest] add HitSpotted

execute if entity @s[tag=!WeakpointDamaged,tag=Orange] run tag @e[type=marker,tag=ImpactMarker,limit=1,sort=nearest] add HitWeakpointOrange
execute if entity @s[tag=!WeakpointDamaged,tag=Orange,tag=Spotted] run tag @e[type=marker,tag=ImpactMarker,limit=1,sort=nearest] add HitSpotted

tag @s add WeakpointDamaged