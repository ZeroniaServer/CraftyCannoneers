execute unless score @s joinpurple matches 1.. run title @s actionbar ["",{"translate":"game.try_join","color":"aqua","bold":false,"with":[{"translate":"game.try_join.orange","color":"gold","bold":true},{"translate":"game.try_join.team","color":"aqua","bold":false}]}]
execute unless score @s joinpurple matches 1.. run title @s times 0 30 5
execute unless score @s joinpurple matches 1.. run return run tag @s add tryJoinPurple

execute if score @s joinpurple matches 1.. run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"game.imbalanced","color":"red","bold":true}]
execute if score @s joinpurple matches 1.. run tellraw @s ["",{"translate":"game.try_join","color":"dark_aqua","italic":true,"with":[{"translate":"game.try_join.orange","color":"gold","bold":true,"italic":true},{"translate":"game.try_join.team","color":"dark_aqua","italic":true}]}]