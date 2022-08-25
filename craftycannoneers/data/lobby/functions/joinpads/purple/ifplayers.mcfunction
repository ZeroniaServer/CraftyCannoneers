#> Dust particles
execute unless score $InPurple CmdData > $InOrange CmdData unless score $InPurple CmdData >= $MaxTeamSize CmdData run particle falling_dust purple_concrete ~ ~1 ~ 0.7 0.3 0.7 0 1 normal @a[team=Lobby,predicate=!game:tutorialbounds]

#> Join team
execute unless score $InPurple CmdData > $InOrange CmdData unless score $InPurple CmdData >= $MaxTeamSize CmdData run tag @a[team=Lobby,limit=1,sort=random,distance=..1.2] add JoinPurple
execute if score $InPurple CmdData >= $MaxTeamSize CmdData as @a[team=Lobby,distance=..1,tag=!tryJoinPurple] run function lobby:joinpads/purple/full
execute if score $InPurple CmdData > $InOrange CmdData as @a[team=Lobby,distance=..1,tag=!tryJoinPurple] run function lobby:joinpads/purple/imbalanced