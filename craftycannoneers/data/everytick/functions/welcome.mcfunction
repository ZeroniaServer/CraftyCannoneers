playsound ding master @s ~ ~-1 ~ 1 1.2
title @s title ["",{"translate":"game.name","with":[{"translate":"game.crafty","bold":true,"color":"dark_purple"},{"translate":"game.cannoneers","bold":true,"color":"gold"}]}]
title @s subtitle ["",{"translate":"game.made_by","color":"gray","with":[{"text":"v1.1.1","color":"aqua"},{"translate":"zeronia","color":"green"}]}]
scoreboard players set @s GamesPlayed 3
tellraw @s ["","\n",{"translate":"chat.welcome","bold":true,"color":"dark_green"},"\n",{"translate":"chat.new_here","color":"green","with":[{"translate":"game.name","with":[{"translate":"game.crafty","bold":true,"color":"dark_purple"},{"translate":"game.cannoneers","bold":true,"color":"gold"}]}]},"\n",{"translate":"chat.recommend","color":"green","with":[{"translate":"tutorial.training_island","bold":true,"color":"aqua"}]},"\n",{"translate":"chat.warp_pad","italic":true,"color":"dark_green"},"\n"]
tag @s add firstJoined