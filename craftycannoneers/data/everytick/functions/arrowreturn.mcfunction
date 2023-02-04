execute store result score @s[tag=!arrowProcessed] playerUUID run data get entity @s Thrower[0]
scoreboard players operation $tempuuid playerUUID = @s playerUUID

execute as @a[team=!Lobby,team=!Spectator,predicate=game:matches_uuid,tag=!fullinv,limit=1] if score @s arrowsToShoot matches 1.. if score @s hasArrows < @s arrowsToShoot run tag @s add arrowActionable

execute if entity @a[team=!Lobby,team=!Spectator,predicate=game:matches_uuid,tag=arrowActionable,limit=1] store result score $arrowCount CmdData run data get entity @s Item.Count
execute unless entity @a[team=!Lobby,team=!Spectator,predicate=game:matches_uuid,tag=arrowActionable] run tag @s remove NoDropArrow

execute as @a[team=!Lobby,team=!Spectator,predicate=game:matches_uuid,tag=arrowActionable] run scoreboard players operation $arrowDiff CmdData = @s arrowsToShoot
execute as @a[team=!Lobby,team=!Spectator,predicate=game:matches_uuid,tag=arrowActionable] run scoreboard players operation $arrowDiff CmdData -= @s hasArrows

#> if this stack is less than or equal to amount needed, automatically return to player
execute if entity @a[team=!Lobby,team=!Spectator,predicate=game:matches_uuid,tag=arrowActionable] if score $arrowCount CmdData <= $arrowDiff CmdData run tag @s add NoDropArrow
execute as @a[team=!Lobby,team=!Spectator,predicate=game:matches_uuid,tag=arrowActionable] if score $arrowCount CmdData <= $arrowDiff CmdData run scoreboard players operation @s hasArrows += $arrowCount CmdData
execute as @a[team=!Lobby,team=!Spectator,predicate=game:matches_uuid,tag=arrowActionable] if score $arrowCount CmdData <= $arrowDiff CmdData run tag @s remove arrowActionable

#> else if this stack is greater than amount needed, deduct arrowsToShoot and give back difference to player
execute as @a[team=!Lobby,team=!Spectator,predicate=game:matches_uuid,tag=arrowActionable] run scoreboard players operation $arrowCount CmdData -= $arrowDiff CmdData
execute if entity @a[team=!Lobby,team=!Spectator,predicate=game:matches_uuid,tag=arrowActionable] if score $arrowCount CmdData matches ..0 run kill @s
execute if entity @a[team=!Lobby,team=!Spectator,predicate=game:matches_uuid,tag=arrowActionable] store result entity @s Item.Count int 1 run scoreboard players get $arrowCount CmdData
execute as @a[team=!Lobby,team=!Spectator,predicate=game:matches_uuid,tag=arrowActionable] run loot give @s loot weapons:arrows_return
execute as @a[team=!Lobby,team=!Spectator,predicate=game:matches_uuid,tag=arrowActionable] run scoreboard players operation @s hasArrows += $arrowDiff CmdData
execute as @a[team=!Lobby,team=!Spectator,predicate=game:matches_uuid,tag=arrowActionable] run tag @s remove arrowActionable

scoreboard players reset $tempuuid playerUUID
scoreboard players reset $arrowCount CmdData
scoreboard players reset $arrowDiff CmdData
tag @s[tag=!arrowProcessed] add arrowProcessed