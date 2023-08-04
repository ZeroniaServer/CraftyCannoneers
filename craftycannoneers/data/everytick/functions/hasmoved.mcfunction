#> Reset movement tracking scoreboards
scoreboard players reset @s jump
scoreboard players reset @s walk
scoreboard players reset @s sprint
scoreboard players reset @s crouch

#> Welcome new players
execute at @s[team=Lobby,tag=!firstJoined] run function everytick:welcome

#> Notify players about resource pack
execute if score $gamestate CmdData matches 0..2 run tellraw @s[tag=firstJoined,tag=!msgReceived] ["",{"translate":"%1$s","with":[{"nbt":"ResourcePack","storage":"craftycannoneers:messages","interpret":true},{"translate":"ver1.1.0","fallback":"%1$s","with":[{"nbt":"OutdatedPack","storage":"craftycannoneers:messages","interpret":true},{"nbt":"ReadyToPlay","storage":"craftycannoneers:messages","interpret":true}]}]}]
execute unless score $gamestate CmdData matches 0.. run tellraw @s[tag=firstJoined,tag=!msgReceived] ["",{"translate":"%1$s","with":[{"nbt":"ResourcePack","storage":"craftycannoneers:messages","interpret":true},{"translate":"ver1.1.0","fallback":"%1$s","with":[{"nbt":"OutdatedPack","storage":"craftycannoneers:messages","interpret":true},{"nbt":"SettingsMap","storage":"craftycannoneers:messages","interpret":true}]}]}]
tag @s[tag=firstJoined] add msgReceived

execute if entity @s[tag=NeedsTutorial,tag=!hideTips] run tellraw @s ["","\n",{"translate":"chat.new_here","color":"green","with":[{"translate":"game.name","with":[{"translate":"game.crafty","bold":true,"color":"dark_purple"},{"translate":"game.cannoneers","bold":true,"color":"gold"}]}]},"\n",{"translate":"chat.recommend","color":"green","with":[{"translate":"tutorial.training_island","bold":true,"color":"aqua"}]},"\n",{"translate":"chat.warp_pad","italic":true,"color":"dark_green"},"\n"]
tag @s[tag=NeedsTutorial] remove NeedsTutorial