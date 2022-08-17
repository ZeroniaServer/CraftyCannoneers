execute unless entity @s[tag=Exposed7] unless entity @e[type=marker,tag=S7,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake7
execute unless entity @s[tag=Exposed7] unless entity @e[type=marker,tag=S7,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake
scoreboard players set @s fakeexpose7 0
advancement revoke @s only tutorial:weakpoints/seefakeweakpoint7