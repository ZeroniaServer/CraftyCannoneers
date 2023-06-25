execute unless score $gamestate CmdData matches 2.. run tellraw @a ["",{"translate":"game.joined","color":"dark_aqua","with":[{"selector":"@s","color":"blue"},{"translate":"game.orange","color":"gold"},{"translate":"game.team","color":"dark_aqua"},""]}]
execute if score $gamestate CmdData matches 2.. run tellraw @a ["",{"translate":"game.joined","color":"dark_aqua","with":[{"selector":"@s","color":"blue"},{"translate":"game.orange","color":"gold"},{"translate":"game.team","color":"dark_aqua"},{"translate":"game.late","color":"dark_aqua"}]}]
execute if score $gamestate CmdData matches 2.. run tellraw @s ["",{"translate":"game.take_off","color":"aqua","italic":true,"with":[{"translate":"armor.hat","bold":true,"color":"gold"}]}]
gamemode adventure @s
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
tag @s remove JoinOrange