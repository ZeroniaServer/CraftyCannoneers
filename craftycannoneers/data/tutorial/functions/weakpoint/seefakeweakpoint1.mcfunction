execute unless entity @s[tag=Exposed1] unless entity @e[type=marker,tag=S1,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake1
execute unless entity @s[tag=Exposed1] unless entity @e[type=marker,tag=S1,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake
scoreboard players set @s[scores={fakeexpose1=100..}] fakeexpose1 -1
scoreboard players set @s[scores={fakeexpose1=1..}] fakeexpose1 0