scoreboard players add @s CmdData 1

#> Kill if player dies
execute if score @s CmdData matches ..99 if entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid,scores={death=1..}] run kill @s

#> Kill if player leaves game
execute if score @s CmdData matches ..99 if entity @a[team=Lobby,predicate=game:matches_uuid] run kill @s

#> Tag player as needing item and kill self after 5 seconds
execute if entity @s[scores={CmdData=100..},tag=Cutlass] on origin run tag @s[team=!Spectator,gamemode=!spectator] add NeedsCutlass
execute if entity @s[scores={CmdData=100..},tag=Crossbow] on origin run tag @s[team=!Spectator,gamemode=!spectator] add NeedsCrossbow
execute if entity @s[scores={CmdData=100..},tag=Spyglass] on origin run tag @s[team=!Spectator,gamemode=!spectator] add NeedsSpyglass
execute if entity @s[scores={CmdData=100..},tag=Tracer] on origin run tag @s[team=!Spectator,gamemode=!spectator] add NeedsTracer
kill @s[scores={CmdData=100..}]