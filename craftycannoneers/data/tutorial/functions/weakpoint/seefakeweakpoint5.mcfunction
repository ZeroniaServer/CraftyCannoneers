execute unless entity @s[tag=Exposed5] unless entity @e[type=marker,tag=S5,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake5
execute unless entity @s[tag=Exposed5] unless entity @e[type=marker,tag=S5,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake
scoreboard players set @s fakeexpose5 0
advancement revoke @s only tutorial:weakpoints/seefakeweakpoint5