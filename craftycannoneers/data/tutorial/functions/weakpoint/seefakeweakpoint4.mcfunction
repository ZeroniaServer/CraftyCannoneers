execute unless entity @s[tag=Exposed4] unless entity @e[type=marker,tag=S4,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake4
execute unless entity @s[tag=Exposed4] unless entity @e[type=marker,tag=S4,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake
scoreboard players set @s[scores={fakeexpose4=100..}] fakeexpose4 -1
scoreboard players set @s[scores={fakeexpose4=1..}] fakeexpose4 0