execute unless score $gamestate CmdData matches 1 run scoreboard players enable @a[team=!Lobby,team=!Spectator] startgame
execute as @a[team=!Lobby,team=!Spectator] unless score @s startgame matches 0 run tag @s add StartGame
execute as @a[team=!Lobby,team=!Spectator] unless score @s startgame matches 0 run scoreboard players reset @s startgame
scoreboard players reset @a[team=!Purple,team=!Orange] startgame

execute unless score $ForceCountdown CmdData matches 1.. as @a[tag=StartGame] unless entity @a[team=Orange] run tellraw @s {"text":"Unable to start a game! Both teams need at least 1 player!","color":"red"}
execute unless score $ForceCountdown CmdData matches 1.. as @a[tag=StartGame] unless entity @a[team=Purple] run tellraw @s {"text":"Unable to start a game! Both teams need at least 1 player!","color":"red"}
execute unless score $ForceCountdown CmdData matches 1.. as @a[tag=StartGame,sort=random,limit=1] if entity @a[team=Orange] if entity @a[team=Purple] run tellraw @a ["",{"selector":"@s"},{"text":" started the game!","color":"green"}]
execute unless score $ForceCountdown CmdData matches 1.. as @a[tag=StartGame,sort=random,limit=1] if entity @a[team=Orange] if entity @a[team=Purple] run scoreboard players set $countSec CmdData 0
execute unless score $ForceCountdown CmdData matches 1.. as @a[tag=StartGame,sort=random,limit=1] if entity @a[team=Orange] if entity @a[team=Purple] run scoreboard players set $Countdown CmdData 10
execute unless score $ForceCountdown CmdData matches 1.. as @a[tag=StartGame,sort=random,limit=1] if entity @a[team=Orange] if entity @a[team=Purple] run bossbar set lobbybar name ["",{"text":"Game starting in ","bold":true,"color":"green"},{"score":{"name":"$Countdown","objective":"CmdData"},"bold":true,"color":"dark_green"},{"text":" seconds! ","bold":true,"color":"green"}]
execute unless score $ForceCountdown CmdData matches 1.. as @a[tag=StartGame,sort=random,limit=1] if entity @a[team=Orange] if entity @a[team=Purple] run scoreboard players set $gamestate CmdData 1
execute if score $ForceCountdown CmdData matches 1.. as @a[tag=StartGame,sort=random,limit=1] run tellraw @a ["",{"selector":"@s"},{"text":" started the game!","color":"green"}]
execute if score $ForceCountdown CmdData matches 1.. as @a[tag=StartGame,sort=random,limit=1] run scoreboard players set $countSec CmdData 0
execute if score $ForceCountdown CmdData matches 1.. as @a[tag=StartGame,sort=random,limit=1] run scoreboard players set $Countdown CmdData 10
execute if score $ForceCountdown CmdData matches 1.. as @a[tag=StartGame,sort=random,limit=1] run bossbar set lobbybar name ["",{"text":"Game starting in ","bold":true,"color":"green"},{"score":{"name":"$Countdown","objective":"CmdData"},"bold":true,"color":"dark_green"},{"text":" seconds! ","bold":true,"color":"green"}]
execute if score $ForceCountdown CmdData matches 1.. as @a[tag=StartGame,sort=random,limit=1] run scoreboard players set $gamestate CmdData 1
tag @a[tag=StartGame] remove StartGame

execute unless score $gamestate CmdData matches 1 as @a[scores={loverocks=50..}] unless entity @s[team=!Orange,team=!Purple] run advancement grant @s only tutorial:zzzunlockables/rocks