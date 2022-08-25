#> Orange
execute at @s[tag=JoinpadOrange] run function lobby:joinpads/orange/behavior

#> Purple
execute at @s[tag=JoinpadPurple] run function lobby:joinpads/purple/behavior

#> Spectator
execute at @s[tag=JoinpadSpec,tag=!Locked] if entity @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds] run function lobby:joinpads/spectator/behavior

#> Locked barrier particles
execute if score $barrier CmdData matches 0 at @s[tag=Locked] run particle block_marker barrier ~ ~1 ~ 0 0 0 0 0 normal @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds]