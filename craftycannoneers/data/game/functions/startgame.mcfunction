execute unless score $gamestate CmdData matches 1 run scoreboard players enable @a[team=!Lobby,team=!Spectator,team=!Developer] readyup
execute if score $gamestate CmdData matches 1 as @a[team=!Lobby,team=!Spectator,team=!Developer] run trigger readyup set 0

execute as @a[team=Orange] unless score @s readyup matches 0 unless score $OrangeReady CmdData matches 1 at @s run function game:readyteams/readyorange
execute as @a[team=Orange] unless score @s readyup matches 0 if score $OrangeReady CmdData matches 1 at @s run function game:readyteams/unreadyorange

execute as @a[team=Purple] unless score @s readyup matches 0 unless score $PurpleReady CmdData matches 1 at @s run function game:readyteams/readypurple
execute as @a[team=Purple] unless score @s readyup matches 0 if score $PurpleReady CmdData matches 1 at @s run function game:readyteams/unreadypurple

execute as @a[team=!Lobby,team=!Spectator,team=!Developer] unless score @s readyup matches 0 run scoreboard players reset @s readyup
execute as @a[team=!Purple,team=!Orange] run trigger readyup set 0
tag @a[team=!Purple,team=!Orange,tag=ClickedReady] remove ClickedReady

execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 if entity @a[team=Purple,tag=ClickedReady] if entity @a[team=Orange,tag=ClickedReady] run tellraw @a ["",{"text":"Countdown initiated by ","color":"dark_aqua"},{"selector":"@a[team=Purple,tag=ClickedReady,limit=1]","bold":true,"color":"dark_purple"},{"text":" and ","color":"dark_aqua"},{"selector":"@a[team=Orange,tag=ClickedReady,limit=1]","bold":true,"color":"gold"},{"text":"!","color":"dark_aqua"},"\n",{"text":"The game will begin in 10 seconds!","italic":true,"color":"aqua"}]
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 unless entity @a[team=Purple,tag=ClickedReady] if entity @a[team=Orange,tag=ClickedReady] run tellraw @a ["",{"text":"Countdown initiated by ","color":"dark_aqua"},{"selector":"@a[team=Orange,tag=ClickedReady,limit=1]","bold":true,"color":"gold"},{"text":"!","color":"dark_aqua"},"\n",{"text":"The game will begin in 10 seconds!","italic":true,"color":"aqua"}]
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 if entity @a[team=Purple,tag=ClickedReady] unless entity @a[team=Orange,tag=ClickedReady] run tellraw @a ["",{"text":"Countdown initiated by ","color":"dark_aqua"},{"selector":"@a[team=Purple,tag=ClickedReady,limit=1]","bold":true,"color":"dark_purple"},{"text":"!","color":"dark_aqua"},"\n",{"text":"The game will begin in 10 seconds!","italic":true,"color":"aqua"}]
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 unless entity @a[team=Purple,tag=ClickedReady] unless entity @a[team=Orange,tag=ClickedReady] run tellraw @a ["",{"text":"Countdown initiated!","color":"dark_aqua"},"\n",{"text":"The game will begin in 10 seconds!","italic":true,"color":"aqua"}]

execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 run scoreboard players set $countSec CmdData 0
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 run scoreboard players set $Countdown CmdData 10
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 run bossbar set lobbybar name ["",{"text":"Game starting in ","bold":true,"color":"green"},{"score":{"name":"$Countdown","objective":"CmdData"},"bold":true,"color":"dark_green"},{"text":" seconds! ","bold":true,"color":"green"}]
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 run scoreboard players set $gamestate CmdData 1

execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run tellraw @a [{"text":"Beginning countdown.","color":"green","bold":true}]
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run scoreboard players set $countSec CmdData 0
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run scoreboard players set $Countdown CmdData 10
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run bossbar set lobbybar name ["",{"text":"Game starting in ","bold":true,"color":"green"},{"score":{"name":"$Countdown","objective":"CmdData"},"bold":true,"color":"dark_green"},{"text":" seconds! ","bold":true,"color":"green"}]
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run scoreboard players set $gamestate CmdData 1