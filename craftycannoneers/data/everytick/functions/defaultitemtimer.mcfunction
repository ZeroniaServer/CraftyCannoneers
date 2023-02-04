scoreboard players add @s CmdData 1

#> Kill if player dies
execute if score @s CmdData matches ..99 if entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid,scores={death=1..}] run kill @s

#> Kill if player leaves game
execute if score @s CmdData matches ..99 if entity @a[team=Lobby,predicate=game:matches_uuid] run kill @s

#> Tag player as needing item and kill self after 5 seconds
execute if entity @s[scores={CmdData=100..},tag=Cutlass] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsCutlass
execute if entity @s[scores={CmdData=100..},tag=Crossbow] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsCrossbow
execute if entity @s[scores={CmdData=100..},tag=Spyglass] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsSpyglass
execute if entity @s[scores={CmdData=100..},tag=Tracer] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsTracer
kill @s[scores={CmdData=100..}]