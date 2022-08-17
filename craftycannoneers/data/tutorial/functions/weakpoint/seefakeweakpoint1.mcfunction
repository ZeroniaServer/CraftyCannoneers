execute unless entity @s[tag=Exposed1] unless entity @e[type=marker,tag=S1,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake1
execute unless entity @s[tag=Exposed1] unless entity @e[type=marker,tag=S1,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake
scoreboard players set @s fakeexpose1 0
advancement revoke @s only tutorial:weakpoints/seefakeweakpoint1