#> Dust particles
execute unless entity @s[tag=LockedMidgame] unless score $InOrange CmdData > $InPurple CmdData unless score $InOrange CmdData >= $MaxTeamSize CmdData run particle falling_dust{block_state:"orange_concrete"} ~ ~1 ~ 0.7 0.3 0.7 0 1 normal @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds]

#> Join team
execute unless entity @s[tag=LockedMidgame] unless score $InOrange CmdData > $InPurple CmdData unless score $InOrange CmdData >= $MaxTeamSize CmdData run tag @a[team=Lobby,limit=1,sort=random,distance=..1.2] add JoinOrange
execute if score $InOrange CmdData >= $MaxTeamSize CmdData as @a[team=Lobby,distance=..4,tag=!tryJoinOrange] run function lobby:joinpads/orange/full
execute unless score $InOrange CmdData >= $MaxTeamSize CmdData if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. as @a[team=Lobby,distance=..4,tag=!tryJoinOrange] run function lobby:joinpads/orange/full
execute if score $InOrange CmdData > $InPurple CmdData as @a[team=Lobby,distance=..4,tag=!tryJoinOrange] run function lobby:joinpads/orange/imbalanced