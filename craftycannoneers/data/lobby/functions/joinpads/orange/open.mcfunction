#> Barrier particles
execute if score $barrier CmdData matches 0 if score $InOrange CmdData > $InPurple CmdData run particle block_marker barrier ~ ~1 ~ 0 0 0 0 0 normal @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds]
execute if score $barrier CmdData matches 0 if score $InOrange CmdData >= $MaxTeamSize CmdData run particle block_marker barrier ~ ~1 ~ 0 0 0 0 0 normal @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds]

#> If there's players in the lobby
execute if entity @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds] run function lobby:joinpads/orange/ifplayers