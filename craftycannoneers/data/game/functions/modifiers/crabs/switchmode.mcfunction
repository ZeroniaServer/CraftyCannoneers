scoreboard players reset @s crabtime

summon marker ~ ~ ~ {Tags:["CrabSwitch"]}
scoreboard players set @e[type=marker,tag=CrabSwitch] RNGmax 100
execute as @e[type=marker,tag=CrabSwitch] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=CrabSwitch] run scoreboard players operation @s RNGscore %= @s RNGmax
execute store result score @s crabmode run scoreboard players get @e[type=marker,tag=CrabSwitch,distance=..1,sort=nearest,limit=1] RNGscore
kill @e[type=marker,tag=CrabSwitch]

execute if score @s[tag=follow] crabmode matches 0..50 if entity @a[team=!Spectator,distance=..4] run scoreboard players set @s crabmode 100
execute if score @s crabmode matches 51..75 if entity @a[team=!Spectator,distance=..15] run scoreboard players set @s crabmode 0
execute if score @s crabmode matches 76.. unless entity @a[team=!Spectator,distance=..15] run scoreboard players set @s crabmode 0
execute if score @s[tag=hasitem] crabmode matches 76.. run scoreboard players set @s crabmode 0

tag @s remove roam
tag @s remove follow
tag @s remove steal

execute if score @s crabmode matches 0..50 run tag @s add roam
execute if score @s crabmode matches 0..50 on vehicle on controller run attribute @s minecraft:generic.follow_range base set 0
execute if score @s crabmode matches 0..50 on vehicle unless entity @s[tag=!Orange,tag=!Purple] run team join Blank
execute if score @s crabmode matches 0..50 on vehicle unless entity @s[tag=!Orange,tag=!Purple] on controller run team join Blank

execute if score @s crabmode matches 51..75 run tag @s add follow
execute if score @s crabmode matches 51..75 on vehicle on controller run attribute @s minecraft:generic.follow_range base set 24
execute if score @s crabmode matches 51.. on vehicle if entity @s[tag=Orange] run team join Orange
execute if score @s crabmode matches 51.. on vehicle if entity @s[tag=Orange] on controller run team join Orange
execute if score @s crabmode matches 51.. on vehicle if entity @s[tag=Purple] run team join Purple
execute if score @s crabmode matches 51.. on vehicle if entity @s[tag=Purple] on controller run team join Purple

execute if score @s crabmode matches 76.. run tag @s add steal
execute if score @s crabmode matches 76.. on vehicle on controller if entity @a[team=!Spectator,distance=..15] run attribute @s minecraft:generic.follow_range base set 16