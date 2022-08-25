#> Barrier particles
execute if score $barrier CmdData matches 0 if score $InOrange CmdData > $InPurple CmdData run particle block_marker barrier ~ ~1 ~ 0 0 0 0 0 normal @a[team=Lobby,predicate=!game:tutorialbounds]
execute if score $barrier CmdData matches 0 if score $InOrange CmdData >= $MaxTeamSize CmdData run particle block_marker barrier ~ ~1 ~ 0 0 0 0 0 normal @a[team=Lobby,predicate=!game:tutorialbounds]

#> Dust particles
execute unless score $InOrange CmdData > $InPurple CmdData unless score $InOrange CmdData >= $MaxTeamSize CmdData run particle falling_dust orange_concrete ~ ~1 ~ 0.7 0.3 0.7 0 1 normal @a[team=Lobby,predicate=!game:tutorialbounds]

#> Join team
execute unless score $InOrange CmdData > $InPurple CmdData unless score $InOrange CmdData >= $MaxTeamSize CmdData run tag @a[team=Lobby,limit=1,sort=random,distance=..1.2] add JoinOrange
execute if score $InOrange CmdData >= $MaxTeamSize CmdData as @a[team=Lobby,distance=..1,tag=!tryJoinOrange] run function lobby:joinpads/orange/full
execute if score $InOrange CmdData > $InPurple CmdData as @a[team=Lobby,distance=..1,tag=!tryJoinOrange] run function lobby:joinpads/orange/imbalanced