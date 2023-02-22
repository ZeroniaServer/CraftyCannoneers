#> Move back to original positions
execute if entity @s[tag=Pos1] unless entity @a[team=!Lobby,team=!Spectator,distance=..12] positioned 57 -32 34 unless entity @s[distance=..10] run tp @s 57 -40 34
execute if entity @s[tag=Pos2] unless entity @a[team=!Lobby,team=!Spectator,distance=..12] positioned 68 -32 34 unless entity @s[distance=..10] run tp @s 68 -40 34
execute if entity @s[tag=Pos3] unless entity @a[team=!Lobby,team=!Spectator,distance=..12] positioned 79 -32 34 unless entity @s[distance=..10] run tp @s 79 -40 34
execute if entity @s[tag=Pos4] unless entity @a[team=!Lobby,team=!Spectator,distance=..12] positioned 83 -40 -34 unless entity @s[distance=..10] run tp @s 83 -40 -34
execute if entity @s[tag=Pos5] unless entity @a[team=!Lobby,team=!Spectator,distance=..12] positioned 72 -40 -34 unless entity @s[distance=..10] run tp @s 72 -40 -34
execute if entity @s[tag=Pos6] unless entity @a[team=!Lobby,team=!Spectator,distance=..12] positioned 61 -40 -34 unless entity @s[distance=..10] run tp @s 61 -40 -34

#> Hover in deep water
execute at @s unless entity @a[team=!Lobby,team=!Spectator,predicate=game:inwater,distance=..12] if block ~ ~5 ~ water run effect give @s slow_falling 1 100 true
execute at @s unless entity @a[team=!Lobby,team=!Spectator,predicate=game:inwater,distance=..12] if block ~ ~5 ~ water run tp @s ~ ~0.1 ~

#> Bite players
execute at @s unless entity @e[type=drowned,tag=SharkEntity,tag=Attacking,scores={CmdData=..6},distance=..5] if entity @a[team=!Lobby,team=!Spectator,predicate=game:inwater,distance=..3] run tag @s add Attacking
execute at @s[tag=Attacking] run function game:modifiers/sharks/attacking
scoreboard players reset @s[tag=!Attacking,scores={CmdData=1..}] CmdData 