playsound ding master @s ~ ~-1 ~ 1 1.2
title @s title ["",{"translate":"game.crafty","bold":true,"color":"dark_purple"},{"translate":"game.cannoneers","bold":true,"color":"gold"}]
title @s subtitle ["",{"text":"v1.1.0 ","color":"aqua"},{"translate":"game.made_by","color":"gray","with":[{"text":"Zeronia","color":"green"}]}]
scoreboard players set @s GamesPlayed 3
tellraw @s ["","\n",{"translate":"chat.welcome","bold":true,"color":"dark_green"},"\n",{"translate":"chat.new_here","color":"green"},{"translate":"game.crafty","bold":true,"color":"dark_purple"},{"translate":"game.cannoneers","bold":true,"color":"gold"},{"text":"!","color":"green"},"\n",{"translate":"chat.recommend","color":"green"},{"translate":"tutorial.training_island","bold":true,"color":"aqua"},{"translate":"chat.before_playing","color":"green"},"\n",{"translate":"chat.warp_pad","italic":true,"color":"dark_green"},"\n"]
tag @s add firstJoined