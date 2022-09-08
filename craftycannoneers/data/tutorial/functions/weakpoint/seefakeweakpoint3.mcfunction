execute unless entity @s[tag=Exposed3] unless entity @e[type=marker,tag=S3,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake3
execute unless entity @s[tag=Exposed3] unless entity @e[type=marker,tag=S3,tag=WeakpointDamaged,tag=!Spotted] run tag @s add SpotFake
scoreboard players set @s[scores={fakeexpose3=100..}] fakeexpose3 -1
scoreboard players set @s[scores={fakeexpose3=1..}] fakeexpose3 0