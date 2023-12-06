execute unless score $gamestate CmdData matches 2.. run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" joined the ","color":"dark_aqua"},{"text":"Purple","color":"dark_purple"},{"text":" team!","color":"dark_aqua"}]
execute if score $gamestate CmdData matches 2.. run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" joined the ","color":"dark_aqua"},{"text":"Purple","color":"dark_purple"},{"text":" team! A late arrival, unfortunately.","color":"dark_aqua"}]
execute if score $gamestate CmdData matches 2.. run tellraw @s ["",{"text":"You can take off your ","color":"aqua","italic":true},{"text":"Pirate Hat","bold":true,"color":"dark_purple"},{"text":" to leave the game!","color":"aqua","italic":true}]
gamemode adventure @s
team join Purple @s
execute at @s run tp @s @s
title @s clear
title @s times 0 50 15
execute unless score $gamestate CmdData matches 2.. run tp @s -46 -28.5 -2 0 0
execute if score $gamestate CmdData matches 2.. run tp @s 52 -26 -55 -90 0
execute at @s run playsound block.beehive.enter master @a ~ ~ ~ 1 1
tag @s add loaded
execute unless score $gamestate CmdData matches 2.. run function game:givelobbygear
execute if score $gamestate CmdData matches 2.. run function game:givegear
tag @s remove JoinPurple