execute if score @s joinpurple matches 1.. run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"game.imbalanced","color":"red","bold":true}]
execute if score @s joinpurple matches 1.. run tellraw @s ["",{"translate":"game.try_join","color":"dark_aqua","italic":true,"with":[{"translate":"game.try_join.orange","color":"gold","bold":true,"italic":true},{"translate":"game.try_join.team","color":"dark_aqua","italic":true}]}]
tag @s add tryJoinPurple