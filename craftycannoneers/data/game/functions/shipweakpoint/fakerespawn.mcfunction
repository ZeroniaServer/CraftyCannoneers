execute unless entity @s[tag=WeakpointDamaged] run tag @e[type=marker,tag=ImpactMarker,limit=1,sort=nearest] add HitWeakpointFake
execute unless entity @s[tag=WeakpointDamaged] run scoreboard players add $fakeweakpointhit CmdData 1
tag @s[tag=!WeakpointDamaged] add WeakpointDamaged