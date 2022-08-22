execute if entity @s[tag=!WeakpointDamaged,tag=Purple,tag=Spotted] run scoreboard players add $CritOrange CmdData 85
execute if entity @s[tag=!WeakpointDamaged,tag=Purple] run tag @e[type=marker,tag=ImpactMarker,limit=1,sort=nearest] add HitWeakpointPurple
execute if entity @s[tag=!WeakpointDamaged,tag=Purple,tag=Spotted] run tag @e[type=marker,tag=ImpactMarker,limit=1,sort=nearest] add HitSpotted
execute if entity @s[tag=!WeakpointDamaged,tag=Purple] run function game:shipweakpoint/spawnneworange

execute if entity @s[tag=!WeakpointDamaged,tag=Orange,tag=Spotted] run scoreboard players add $CritOrange CmdData 85
execute if entity @s[tag=!WeakpointDamaged,tag=Orange] run tag @e[type=marker,tag=ImpactMarker,limit=1,sort=nearest] add HitWeakpointOrange
execute if entity @s[tag=!WeakpointDamaged,tag=Orange,tag=Spotted] run tag @e[type=marker,tag=ImpactMarker,limit=1,sort=nearest] add HitSpotted
execute if entity @s[tag=!WeakpointDamaged,tag=Orange] run function game:shipweakpoint/spawnnewpurple

tag @s add WeakpointDamaged