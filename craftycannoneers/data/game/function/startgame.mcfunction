execute unless score $gamestate CmdData matches 1 run scoreboard players enable @a[team=!Lobby,team=!Spectator,team=!Developer] readyup
execute if score $gamestate CmdData matches 1 as @a[team=!Lobby,team=!Spectator,team=!Developer] run trigger readyup set 0
scoreboard players enable @a[team=Lobby] cancelMatch
execute as @a[team=!Lobby,team=!Developer] run trigger cancelMatch set 0
execute as @a[team=Lobby,scores={cancelMatch=1..,clickcooldown=0}] run function lobby:customizer/cancel/interact

execute as @a[team=Orange] unless score @s readyup matches 0 unless score $OrangeReady CmdData matches 1 at @s run function game:readyteams/readyorange
execute as @a[team=Orange] unless score @s readyup matches 0 if score $OrangeReady CmdData matches 1 at @s run function game:readyteams/unreadyorange

execute as @a[team=Purple] unless score @s readyup matches 0 unless score $PurpleReady CmdData matches 1 at @s run function game:readyteams/readypurple
execute as @a[team=Purple] unless score @s readyup matches 0 if score $PurpleReady CmdData matches 1 at @s run function game:readyteams/unreadypurple

execute as @a[team=!Lobby,team=!Spectator,team=!Developer] unless score @s readyup matches 0 run scoreboard players reset @s readyup
execute as @a[team=!Purple,team=!Orange] run trigger readyup set 0
tag @a[team=!Purple,team=!Orange,tag=ClickedReady] remove ClickedReady

execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 if entity @a[team=Purple,tag=ClickedReady] if entity @a[team=Orange,tag=ClickedReady] run tellraw @a ["",{translate:"game.countdown.initiated_by.and",color:"dark_aqua",with:[{selector:"@a[team=Purple,tag=ClickedReady,limit=1]",bold:true,color:"dark_purple"},{selector:"@a[team=Orange,tag=ClickedReady,limit=1]",bold:true,color:"gold"}]},"\n",{translate:"game.countdown.ten_seconds",italic:true,color:"aqua"}]
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 unless entity @a[team=Purple,tag=ClickedReady] if entity @a[team=Orange,tag=ClickedReady] run tellraw @a ["",{translate:"game.countdown.initiated_by",color:"dark_aqua",with:[{selector:"@a[team=Orange,tag=ClickedReady,limit=1]",bold:true,color:"gold"}]},"\n",{translate:"game.countdown.ten_seconds",italic:true,color:"aqua"}]
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 if entity @a[team=Purple,tag=ClickedReady] unless entity @a[team=Orange,tag=ClickedReady] run tellraw @a ["",{translate:"game.countdown.initiated_by",color:"dark_aqua",with:[{selector:"@a[team=Purple,tag=ClickedReady,limit=1]",bold:true,color:"dark_purple"}]},"\n",{translate:"game.countdown.ten_seconds",italic:true,color:"aqua"}]
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 unless entity @a[team=Purple,tag=ClickedReady] unless entity @a[team=Orange,tag=ClickedReady] run tellraw @a ["",{translate:"game.countdown.initiated",color:"dark_aqua"},"\n",{translate:"game.countdown.ten_seconds",italic:true,color:"aqua"}]

execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 run scoreboard players set $countSec CmdData 0
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 run scoreboard players set $Countdown CmdData 10
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 run bossbar set lobbybar name ["",{translate:"countdown.seconds",bold:true,color:"green",with:[{"score":{"name":"$Countdown","objective":"CmdData"},bold:true,color:"dark_green"}]}]
execute unless score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 if score $OrangeReady CmdData matches 1 if score $PurpleReady CmdData matches 1 run scoreboard players set $gamestate CmdData 1

execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run tellraw @a [{translate:"game.countdown.beginning",color:"green",bold:true}]
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run scoreboard players set $countSec CmdData 0
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run scoreboard players set $Countdown CmdData 10
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run bossbar set lobbybar name ["",{translate:"game.countdown.seconds",bold:true,color:"green",with:[{"score":{"name":"$Countdown","objective":"CmdData"},bold:true,color:"dark_green"}]}]
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run scoreboard players set $gamestate CmdData 1