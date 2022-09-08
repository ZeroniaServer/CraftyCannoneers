execute unless entity @s[tag=Exposed2] unless entity @e[type=marker,tag=S2,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake2
execute unless entity @s[tag=Exposed2] unless entity @e[type=marker,tag=S2,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake
scoreboard players set @s[scores={fakeexpose2=100..}] fakeexpose2 -1
scoreboard players set @s[scores={fakeexpose2=1..}] fakeexpose2 0