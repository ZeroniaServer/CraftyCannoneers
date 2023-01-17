#> Reset movement tracking scoreboards
scoreboard players reset @s jump
scoreboard players reset @s walk
scoreboard players reset @s sprint
scoreboard players reset @s crouch

#> Welcome new players
execute at @s[team=Lobby,tag=!firstJoined] run function everytick:welcome

#> Notify players about resource pack
execute if score $gamestate CmdData matches 0.. run tellraw @s[tag=firstJoined,tag=!msgReceived] ["",{"translate":"%1$s%9376642$s","with":[{"nbt":"ResourcePack","storage":"craftycannoneers:messages","interpret":true,"extra":["\n\n",{"nbt":"ReadyToPlay","storage":"craftycannoneers:messages","interpret":true}]},{"nbt":"ReadyToPlay","storage":"craftycannoneers:messages","interpret":true}]}]
execute unless score $gamestate CmdData matches 0.. run tellraw @s[tag=firstJoined,tag=!msgReceived] ["",{"translate":"%1$s%9376642$s","with":[{"nbt":"ResourcePack","storage":"craftycannoneers:messages","interpret":true,"extra":["\n\n",{"nbt":"SettingsMap","storage":"craftycannoneers:messages","interpret":true}]},{"nbt":"SettingsMap","storage":"craftycannoneers:messages","interpret":true}]}]
tag @s[tag=firstJoined] add msgReceived