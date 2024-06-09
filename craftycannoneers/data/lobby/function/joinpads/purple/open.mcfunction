#> Barrier particles
execute unless score $purplelock CmdData matches 1 if score $InPurple CmdData > $InOrange CmdData run function lobby:joinpads/purple/lock
execute unless score $purplelock CmdData matches 1 if score $InPurple CmdData >= $MaxTeamSize CmdData run function lobby:joinpads/purple/lock
execute if score $purplelock CmdData matches 1 unless score $InPurple CmdData > $InOrange CmdData unless score $InPurple CmdData >= $MaxTeamSize CmdData run function lobby:joinpads/purple/unlock

#> If there's players in the lobby
execute if entity @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds] run function lobby:joinpads/purple/ifplayers