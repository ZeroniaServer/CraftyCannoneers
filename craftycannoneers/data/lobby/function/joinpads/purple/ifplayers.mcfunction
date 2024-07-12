#> Dust particles
execute unless entity @s[tag=LockedMidgame] unless score $InPurple CmdData > $InOrange CmdData unless score $InPurple CmdData >= $MaxTeamSize CmdData run particle falling_dust{block_state:"purple_concrete"} ~ ~1 ~ 0.7 0.3 0.7 0 1 normal @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds]

#> Join team
execute unless entity @s[tag=LockedMidgame] unless score $InPurple CmdData > $InOrange CmdData unless score $InPurple CmdData >= $MaxTeamSize CmdData run tag @a[team=Lobby,limit=1,sort=random,distance=..1.2] add JoinPurple
execute if score $InPurple CmdData >= $MaxTeamSize CmdData as @a[team=Lobby,distance=..4,tag=!tryJoinPurple] run function lobby:joinpads/purple/full
execute unless score $InPurple CmdData >= $MaxTeamSize CmdData if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. as @a[team=Lobby,distance=..4,tag=!tryJoinPurple] run function lobby:joinpads/purple/full
execute if score $InPurple CmdData > $InOrange CmdData as @a[team=Lobby,distance=..4,tag=!tryJoinPurple] run function lobby:joinpads/purple/imbalanced