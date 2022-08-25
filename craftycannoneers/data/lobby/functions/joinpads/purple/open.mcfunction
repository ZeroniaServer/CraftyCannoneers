#> Barrier particles
execute if score $barrier CmdData matches 0 if score $InPurple CmdData > $InOrange CmdData run particle block_marker barrier ~ ~1 ~ 0 0 0 0 0 normal @a[team=Lobby,predicate=!game:tutorialbounds]
execute if score $barrier CmdData matches 0 if score $InPurple CmdData >= $MaxTeamSize CmdData run particle block_marker barrier ~ ~1 ~ 0 0 0 0 0 normal @a[team=Lobby,predicate=!game:tutorialbounds]

#> If there's players in the lobby
execute if entity @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds] run function lobby:joinpads/purple/ifplayers