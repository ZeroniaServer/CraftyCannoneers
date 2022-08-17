execute unless entity @s[tag=Exposed4] unless entity @e[type=marker,tag=S4,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake4
execute unless entity @s[tag=Exposed4] unless entity @e[type=marker,tag=S4,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake
scoreboard players set @s fakeexpose4 0
advancement revoke @s only tutorial:weakpoints/seefakeweakpoint4