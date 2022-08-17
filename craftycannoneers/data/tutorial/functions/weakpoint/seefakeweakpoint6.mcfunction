execute unless entity @s[tag=Exposed6] unless entity @e[type=marker,tag=S6,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake6
execute unless entity @s[tag=Exposed6] unless entity @e[type=marker,tag=S6,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake
scoreboard players set @s fakeexpose6 0
advancement revoke @s only tutorial:weakpoints/seefakeweakpoint6