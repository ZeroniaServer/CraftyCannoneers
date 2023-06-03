playsound ding master @s ~ ~-1 ~ 1 1.2
title @s title ["",{"text":"Crafty ","bold":true,"color":"dark_purple"},{"text":"Cannoneers","bold":true,"color":"gold"}]
title @s subtitle ["",{"text":"v1.0.5 ","color":"aqua"},{"text":"Made by ","color":"gray"},{"text":"Zeronia","color":"green"},{"text":"!","color":"gray"}]
scoreboard players set @s GamesPlayed 10
tellraw @s ["","\n",{"text":"Welcome aboard! ","bold":true,"color":"dark_green"},"\n",{"text":"It seems like you're new to ","color":"green"},{"text":"Crafty ","bold":true,"color":"dark_purple"},{"text":"Cannoneers","bold":true,"color":"gold"},{"text":"!","color":"green"},"\n",{"text":"We highly recommend you to check out the ","color":"green"},{"text":"Training Island","bold":true,"color":"aqua"},{"text":" before playing the actual game!","color":"green"},"\n",{"text":"You can go there by using the blue warp pad on the left side of the Lobby.","italic":true,"color":"dark_green"},"\n"]
tag @s add firstJoined