execute unless score $gamestate CmdData matches 2.. run tellraw @a ["",{"selector":"@s","color":"blue"},{"translate":"game.joined","color":"dark_aqua"},{"translate":"game.purple","color":"dark_purple"},{"translate":"game.team","color":"dark_aqua"},{"text":"!","color":"dark_aqua"}]
execute if score $gamestate CmdData matches 2.. run tellraw @a ["",{"selector":"@s","color":"blue"},{"translate":"game.joined","color":"dark_aqua"},{"translate":"game.purple","color":"dark_purple"},{"translate":"game.team","color":"dark_aqua"},{"text":"! "},{"translate":"game.late","color":"dark_aqua"}]
execute if score $gamestate CmdData matches 2.. run tellraw @s ["",{"translate":"game.take_off","color":"aqua","italic":true},{"translate":"armor.hat","bold":true,"color":"dark_purple"},{"translate":"game.to_leave","color":"aqua","italic":true}]
team join Purple @s
execute at @s run tp @s @s
title @s times 0 50 15
execute unless score $gamestate CmdData matches 2.. run tp @s -46 -28.5 -2 0 0
execute if score $gamestate CmdData matches 2.. run tp @s 52 -26 -55 -90 0
execute at @s run playsound block.beehive.enter master @a ~ ~ ~ 1 1
tag @s add loaded
execute unless score $gamestate CmdData matches 2.. run function game:givelobbygear
execute if score $gamestate CmdData matches 2.. run function game:givegear
tag @s remove JoinPurple