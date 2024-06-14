#> Orange
execute at @s[tag=JoinpadOrange] run function lobby:joinpads/orange/behavior

#> Purple
execute at @s[tag=JoinpadPurple] run function lobby:joinpads/purple/behavior

#> Spectator
execute at @s[tag=JoinpadSpec,tag=!Locked] if entity @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds] run function lobby:joinpads/spectator/behavior