data remove entity @s LeftOwner
scoreboard players add $highest rockID 1
summon marker ~ ~ ~ {Tags:["rocktracker"]}
scoreboard players operation @e[type=marker,tag=rocktracker,tag=!init,limit=1,sort=nearest] rockID = $highest rockID
scoreboard players operation @s rockID = $highest rockID
tag @e[type=marker,tag=rocktracker,tag=!init,limit=1,sort=nearest] add init
tag @s add init