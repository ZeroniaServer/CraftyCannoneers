execute unless score @s joinorange matches 1.. run title @s title ["",{"translate":"game.imbalanced","color":"red","bold":true}]
execute unless score @s joinorange matches 1.. run title @s subtitle ["",{"translate":"game.try_join","color":"dark_aqua","bold":false,"with":[{"translate":"game.purple","color":"dark_purple","bold":true},{"translate":"game.team","color":"dark_aqua","bold":false}]}]
execute unless score @s joinorange matches 1.. run title @s times 0 30 5

execute if score @s joinorange matches 1.. run tellraw @s ["",{"translate":"game.imbalanced","color":"red","bold":true}]
execute if score @s joinorange matches 1.. run tellraw @s ["",{"translate":"game.try_join","color":"dark_aqua","italic":true,"with":[{"translate":"game.purple","color":"dark_purple","bold":true,"italic":true},{"translate":"game.team","color":"dark_aqua","italic":true}]}]

tag @s add tryJoinOrange