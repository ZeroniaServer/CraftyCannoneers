execute unless entity @s[tag=Exposed3] unless entity @e[type=marker,tag=S3,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake3
execute unless entity @s[tag=Exposed3] unless entity @e[type=marker,tag=S3,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake
scoreboard players set @s fakeexpose3 0
advancement revoke @s only tutorial:weakpoints/seefakeweakpoint3