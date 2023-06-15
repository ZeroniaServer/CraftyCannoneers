execute as @e[type=drowned,tag=SharkEntity] at @s run function game:modifiers/sharks/behavior
execute as @e[type=cod,tag=SharkEntity] at @s run function game:modifiers/sharks/sharkcod

#> Mark players as valid shark targets (used to determine when sharks should swim back to spawn)
tag @a[team=!Lobby,team=!Spectator,predicate=game:inwater] add SharkTarget
tag @a[team=!Lobby,team=!Spectator,predicate=game:boat/inboat] add SharkTarget
scoreboard players add @a[tag=SharkTarget] sharktarget 1
scoreboard players reset @a[tag=SharkTarget,predicate=game:inwater] sharktarget
tag @a[tag=SharkTarget,scores={sharktarget=20..}] remove SharkTarget
scoreboard players reset @a[tag=!SharkTarget,scores={sharktarget=1..}] sharktarget