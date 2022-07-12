execute unless score $gamestate CmdData matches 1 run scoreboard players enable @a[team=!Lobby,team=!Spectator] readyup
execute if score $gamestate CmdData matches 1 as @a[team=!Lobby,team=!Spectator] run trigger readyup set 0

execute as @a[team=Orange] unless score @s readyup matches 0 unless score $OrangeReady CmdData matches 1 run tellraw @a [{"text":"The ","color":"dark_aqua"},{"text":"Orange","color":"gold"},{"text":" team is ready to play!","color":"dark_aqua"}]
execute as @a[team=Orange] unless score @s readyup matches 0 if score $OrangeReady CmdData matches 1 run tellraw @a [{"text":"The ","color":"dark_aqua"},{"text":"Orange","color":"gold"},{"text":" team is no longer ready to play.","color":"dark_aqua"}]
execute as @a[team=Orange] unless score @s readyup matches 0 run scoreboard players add $OrangeReady CmdData 1
execute if score $OrangeReady CmdData matches 2.. run scoreboard players set $OrangeReady CmdData 0

execute as @a[team=Purple] unless score @s readyup matches 0 unless score $PurpleReady CmdData matches 1 run tellraw @a [{"text":"The ","color":"dark_aqua"},{"text":"Purple","color":"dark_purple"},{"text":" team is ready to play!","color":"dark_aqua"}]
execute as @a[team=Purple] unless score @s readyup matches 0 if score $PurpleReady CmdData matches 1 run tellraw @a [{"text":"The ","color":"dark_aqua"},{"text":"Purple","color":"dark_purple"},{"text":" team is no longer ready to play.","color":"dark_aqua"}]
execute as @a[team=Purple] unless score @s readyup matches 0 run scoreboard players add $PurpleReady CmdData 1
execute if score $PurpleReady CmdData matches 2.. run scoreboard players set $PurpleReady CmdData 0

execute as @a[team=!Lobby,team=!Spectator] unless score @s readyup matches 0 run scoreboard players reset @s readyup
execute as @a[team=!Purple,team=!Orange] run trigger readyup set 0

execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 run tellraw @a [{"text":"Both teams are ready! Beginning countdown.","color":"green","bold":true}]
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 run scoreboard players set $countSec CmdData 0
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 run scoreboard players set $Countdown CmdData 10
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 run bossbar set lobbybar name ["",{"text":"Game starting in ","bold":true,"color":"green"},{"score":{"name":"$Countdown","objective":"CmdData"},"bold":true,"color":"dark_green"},{"text":" seconds! ","bold":true,"color":"green"}]
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 run scoreboard players set $gamestate CmdData 1
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run tellraw @a [{"text":"Beginning countdown.","color":"green","bold":true}]
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run scoreboard players set $countSec CmdData 0
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run scoreboard players set $Countdown CmdData 10
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run bossbar set lobbybar name ["",{"text":"Game starting in ","bold":true,"color":"green"},{"score":{"name":"$Countdown","objective":"CmdData"},"bold":true,"color":"dark_green"},{"text":" seconds! ","bold":true,"color":"green"}]
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run scoreboard players set $gamestate CmdData 1

execute unless score $gamestate CmdData matches 1 as @a[scores={loverocks=50..}] unless entity @s[team=!Orange,team=!Purple] run advancement grant @s only tutorial:zzzunlockables/rocks