execute unless entity @s[tag=Exposed6] unless entity @e[type=marker,tag=S6,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake6
execute unless entity @s[tag=Exposed6] unless entity @e[type=marker,tag=S6,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake
scoreboard players set @s[scores={fakeexpose6=100..}] fakeexpose6 -1
scoreboard players set @s[scores={fakeexpose6=1..}] fakeexpose6 0