data remove entity @s LeftOwner
summon marker ~ ~ ~ {Tags:["rocktracker"]}
ride @e[type=marker,tag=rocktracker,tag=!init,limit=1] mount @s
execute on passengers run tag @s add init
tag @s add init