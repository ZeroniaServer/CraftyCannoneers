execute unless score $gamestate CmdData matches 1 run scoreboard players enable @a[team=!Lobby,team=!Spectator] startgame
execute as @a[team=!Lobby,team=!Spectator] unless score @s startgame matches 0 run tag @s add StartGame
execute as @a[team=!Lobby,team=!Spectator] unless score @s startgame matches 0 run scoreboard players reset @s startgame
scoreboard players reset @a[team=!Purple,team=!Orange] startgame

execute as @a[tag=StartGame] unless entity @a[team=Orange] run tellraw @s {"text":"Unable to start a game! Both teams need at least 1 player!","color":"red"}
execute as @a[tag=StartGame] unless entity @a[team=Purple] run tellraw @s {"text":"Unable to start a game! Both teams need at least 1 player!","color":"red"}
execute as @a[tag=StartGame,sort=random,limit=1] if entity @a[team=Orange] if entity @a[team=Purple] run tellraw @a ["",{"selector":"@s"},{"text":" started the game!","color":"green"}]
execute as @a[tag=StartGame,sort=random,limit=1] if entity @a[team=Orange] if entity @a[team=Purple] run scoreboard players set $countSec CmdData 0
execute as @a[tag=StartGame,sort=random,limit=1] if entity @a[team=Orange] if entity @a[team=Purple] run scoreboard players set $Countdown CmdData 10
execute as @a[tag=StartGame,sort=random,limit=1] if entity @a[team=Orange] if entity @a[team=Purple] run bossbar set lobbybar name ["",{"text":"Game starting in ","bold":true,"color":"green"},{"score":{"name":"$Countdown","objective":"CmdData"},"bold":true,"color":"dark_green"},{"text":" seconds! ","bold":true,"color":"green"}]
execute as @a[tag=StartGame,sort=random,limit=1] if entity @a[team=Orange] if entity @a[team=Purple] run scoreboard players set $gamestate CmdData 1
tag @a[tag=StartGame] remove StartGame