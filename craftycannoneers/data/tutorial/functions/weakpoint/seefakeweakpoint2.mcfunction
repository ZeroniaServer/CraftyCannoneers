execute unless entity @s[tag=Exposed2] unless entity @e[type=marker,tag=S2,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake2
execute unless entity @s[tag=Exposed2] unless entity @e[type=marker,tag=S2,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake
scoreboard players set @s fakeexpose2 0
advancement revoke @s only tutorial:weakpoints/seefakeweakpoint2