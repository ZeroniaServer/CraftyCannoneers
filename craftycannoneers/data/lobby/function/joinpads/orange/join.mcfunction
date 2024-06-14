execute unless score $gamestate CmdData matches 2.. run tellraw @a ["",{"translate":"game.joined","color":"dark_aqua","with":[{"selector":"@s","color":"blue"},{"translate":"game.joined.orange","color":"gold"}]}]
execute if score $gamestate CmdData matches 2.. run tellraw @a ["",{"translate":"game.joined.late","color":"dark_aqua","with":[{"selector":"@s","color":"blue"},{"translate":"game.joined.orange","color":"gold"}]}]
execute if score $gamestate CmdData matches 2.. run tellraw @s ["",{"translate":"game.take_off","color":"aqua","italic":true,"with":[{"translate":"armor.hat.instruction","bold":true,"color":"gold"}]}]
gamemode adventure @s
attribute @s generic.safe_fall_distance base set 3
team join Orange @s
execute at @s run tp @s @s
title @s clear
title @s times 0 50 15
execute unless score $gamestate CmdData matches 2.. run tp @s -46 -28.5 2 -180 0
execute if score $gamestate CmdData matches 2.. run tp @s 88 -26 55 90 0
execute at @s run playsound joingame master @a ~ ~ ~ 1 1
tag @s add loaded
execute unless score $gamestate CmdData matches 2.. run function game:givelobbygear
execute if score $gamestate CmdData matches 2.. run function game:givegear
execute if score $gamestate CmdData matches 2.. run scoreboard players operation @s GameID = $current GameID
tag @s remove JoinOrange
execute unless score $gamestate CmdData matches 2.. unless score $mcancel CmdData matches -1 run function lobby:customizer/cancel/reset