#> Lock effects
execute unless entity @s[tag=LockedMidgame] if score $InOrange CmdData >= $MaxTeamSize CmdData run function lobby:joinpads/orange/fulllock
execute unless entity @s[tag=LockedMidgame] unless score $InOrange CmdData >= $MaxTeamSize CmdData if score $InOrange CmdData > $InPurple CmdData run function lobby:joinpads/orange/imbalancedlock
execute unless entity @s[tag=LockedMidgame] if score $orangelock CmdData matches 1 unless score $InOrange CmdData > $InPurple CmdData unless score $InOrange CmdData >= $MaxTeamSize CmdData run function lobby:joinpads/orange/unlock

#> If there's players in the lobby
execute if entity @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds] run function lobby:joinpads/orange/ifplayers