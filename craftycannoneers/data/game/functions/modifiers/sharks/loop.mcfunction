execute as @e[type=drowned,tag=SharkEntity] at @s run function game:modifiers/sharks/behavior
execute as @e[type=cod,tag=SharkEntity] at @s run function game:modifiers/sharks/sharkcod

#> Mark players as valid shark targets (used to determine when sharks should swim back to spawn)
execute as @a[team=!Lobby,team=!Spectator,predicate=game:inwater,predicate=game:orangeside] unless score @s respawn matches 1.. run tag @s add SharkTarget
execute as @a[team=!Lobby,team=!Spectator,predicate=game:inwater,predicate=game:purpleside] unless score @s respawn matches 1.. run tag @s add SharkTarget
execute as @a[team=!Lobby,team=!Spectator,predicate=game:boat/inboat,predicate=game:orangeside] unless score @s respawn matches 1.. run tag @s add SharkTarget
execute as @a[team=!Lobby,team=!Spectator,predicate=game:boat/inboat,predicate=game:purpleside] unless score @s respawn matches 1.. run tag @s add SharkTarget

scoreboard players add @a[tag=SharkTarget] sharktarget 1
scoreboard players reset @a[tag=SharkTarget,predicate=game:inwater,predicate=game:orangeside] sharktarget
scoreboard players reset @a[tag=SharkTarget,predicate=game:inwater,predicate=game:purpleside] sharktarget
tag @a[tag=SharkTarget,scores={sharktarget=20..}] remove SharkTarget
scoreboard players reset @a[tag=!SharkTarget,scores={sharktarget=1..}] sharktarget