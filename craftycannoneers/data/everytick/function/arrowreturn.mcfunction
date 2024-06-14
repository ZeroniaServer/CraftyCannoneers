execute on origin if score @s[team=!Lobby,team=!Spectator,tag=!fullinv] arrowsToShoot matches 1.. if score @s hasArrows < @s arrowsToShoot run tag @s add arrowActionable

execute if entity @a[tag=arrowActionable,limit=1] store result score $arrowCount CmdData run data get entity @s Item.count
execute unless entity @a[tag=arrowActionable,limit=1] run tag @s remove NoDropArrow

execute on origin run scoreboard players operation $arrowDiff CmdData = @s[tag=arrowActionable] arrowsToShoot
execute on origin run scoreboard players operation $arrowDiff CmdData -= @s[tag=arrowActionable] hasArrows

#> if this stack is less than or equal to amount needed, automatically return to player
execute if entity @a[tag=arrowActionable,limit=1] if score $arrowCount CmdData <= $arrowDiff CmdData run tag @s add NoDropArrow
execute if score $arrowCount CmdData <= $arrowDiff CmdData on origin run scoreboard players operation @s[tag=arrowActionable] hasArrows += $arrowCount CmdData
execute if score $arrowCount CmdData <= $arrowDiff CmdData on origin run tag @s[tag=arrowActionable] remove arrowActionable

#> else if this stack is greater than amount needed, deduct arrowsToShoot from count and give back difference to player
execute on origin if entity @s[tag=arrowActionable] run scoreboard players operation $arrowCount CmdData -= $arrowDiff CmdData
execute if entity @a[tag=arrowActionable] if score $arrowCount CmdData matches ..0 run kill @s
execute if entity @a[tag=arrowActionable] store result entity @s Item.count int 1 run scoreboard players get $arrowCount CmdData
execute on origin run loot give @s[tag=arrowActionable] loot weapons:arrows_return
execute on origin run scoreboard players operation @s[tag=arrowActionable] hasArrows += $arrowDiff CmdData
execute on origin run tag @s[tag=arrowActionable] remove arrowActionable

scoreboard players reset $arrowCount CmdData
scoreboard players reset $arrowDiff CmdData
tag @s[tag=!arrowProcessed] add arrowProcessed