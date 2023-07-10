#> Barrier display
execute unless score $orangelock CmdData matches 1 if score $InOrange CmdData > $InPurple CmdData run function lobby:joinpads/orange/lock
execute unless score $orangelock CmdData matches 1 if score $InOrange CmdData >= $MaxTeamSize CmdData run function lobby:joinpads/orange/lock
execute if score $orangelock CmdData matches 1 unless score $InOrange CmdData > $InPurple CmdData unless score $InOrange CmdData >= $MaxTeamSize CmdData run function lobby:joinpads/orange/unlock

#> If there's players in the lobby
execute if entity @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds] run function lobby:joinpads/orange/ifplayers