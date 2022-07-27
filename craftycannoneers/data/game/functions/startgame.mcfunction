execute unless score $gamestate CmdData matches 1 run scoreboard players enable @a[team=!Lobby,team=!Spectator] readyup
execute if score $gamestate CmdData matches 1 as @a[team=!Lobby,team=!Spectator] run trigger readyup set 0

execute as @a[team=Orange] unless score @s readyup matches 0 unless score $OrangeReady CmdData matches 1 at @s run playsound readyup master @s ~ ~ ~ 1 0
execute as @a[team=Orange] unless score @s readyup matches 0 unless score $OrangeReady CmdData matches 1 run title @a[tag=!inParkour] actionbar ["",{"selector":"@s","bold":true},{"text":" marked ","color":"aqua"},{"text":"Orange","color":"gold","bold":true},{"text":" team as ","color":"aqua"},{"text":"Ready!","color":"green","bold":true,"underlined":true}]
execute as @a[team=Orange] unless score @s readyup matches 0 unless score $OrangeReady CmdData matches 1 run tag @a[team=Orange,tag=ClickedReady] remove ClickedReady
execute as @a[team=Orange] unless score @s readyup matches 0 unless score $OrangeReady CmdData matches 1 run tag @s add ClickedReady
execute as @a[team=Orange] unless score @s readyup matches 0 if score $OrangeReady CmdData matches 1 at @s run playsound unready master @s ~ ~ ~ 1 0.6
execute as @a[team=Orange] unless score @s readyup matches 0 if score $OrangeReady CmdData matches 1 at @s run tag @a[team=Orange] remove ClickedReady
execute as @a[team=Orange] unless score @s readyup matches 0 if score $OrangeReady CmdData matches 1 run title @a[tag=!inParkour] actionbar ["",{"selector":"@s","bold":true},{"text":" marked ","color":"aqua"},{"text":"Orange","color":"gold","bold":true},{"text":" team as ","color":"aqua"},{"text":"Not Ready.","color":"red","bold":true,"underlined":true}]
execute as @a[team=Orange] unless score @s readyup matches 0 run scoreboard players add $OrangeReady CmdData 1
execute if score $OrangeReady CmdData matches 2.. run scoreboard players set $OrangeReady CmdData 0
execute as @a[team=Orange] unless score @s readyup matches 0 if score $OrangeReady CmdData matches 1 run data merge block -44 -28 0 {Text3:'{"extra":[{"color":"gold","text":"Orange: "},{"color":"#55FF55","text":"✔","bold":true}],"text":""}'}
execute as @a[team=Orange] unless score @s readyup matches 0 if score $OrangeReady CmdData matches 0 run data merge block -44 -28 0 {Text3:'{"extra":[{"color":"gold","text":"Orange: "},{"color":"red","text":"❌","bold":true}],"text":""}'}

execute as @a[team=Purple] unless score @s readyup matches 0 unless score $PurpleReady CmdData matches 1 at @s run playsound readyup master @s ~ ~ ~ 1 0
execute as @a[team=Purple] unless score @s readyup matches 0 unless score $PurpleReady CmdData matches 1 run title @a[tag=!inParkour] actionbar ["",{"selector":"@s","bold":true},{"text":" marked ","color":"aqua"},{"text":"Purple","color":"dark_purple","bold":true},{"text":" team as ","color":"aqua"},{"text":"Ready!","color":"green","bold":true,"underlined":true}]
execute as @a[team=Purple] unless score @s readyup matches 0 unless score $PurpleReady CmdData matches 1 run tag @a[team=Purple,tag=ClickedReady] remove ClickedReady
execute as @a[team=Purple] unless score @s readyup matches 0 unless score $PurpleReady CmdData matches 1 run tag @s add ClickedReady
execute as @a[team=Purple] unless score @s readyup matches 0 if score $PurpleReady CmdData matches 1 at @s run playsound unready master @s ~ ~ ~ 1 0.6
execute as @a[team=Purple] unless score @s readyup matches 0 if score $PurpleReady CmdData matches 1 at @s run tag @a[team=Purple] remove ClickedReady
execute as @a[team=Purple] unless score @s readyup matches 0 if score $PurpleReady CmdData matches 1 run title @a[tag=!inParkour] actionbar ["",{"selector":"@s","bold":true},{"text":" marked ","color":"aqua"},{"text":"Purple","color":"dark_purple","bold":true},{"text":" team as ","color":"aqua"},{"text":"Not Ready.","color":"red","bold":true,"underlined":true}]
execute as @a[team=Purple] unless score @s readyup matches 0 run scoreboard players add $PurpleReady CmdData 1
execute if score $PurpleReady CmdData matches 2.. run scoreboard players set $PurpleReady CmdData 0
execute as @a[team=Purple] unless score @s readyup matches 0 if score $PurpleReady CmdData matches 1 run data merge block -44 -28 0 {Text4:'{"extra":[{"color":"dark_purple","text":"Purple: "},{"color":"#55FF55","text":"✔","bold":true}],"text":""}'}
execute as @a[team=Purple] unless score @s readyup matches 0 if score $PurpleReady CmdData matches 0 run data merge block -44 -28 0 {Text4:'{"extra":[{"color":"dark_purple","text":"Purple: "},{"color":"red","text":"❌","bold":true}],"text":""}'}

execute as @a[team=!Lobby,team=!Spectator] unless score @s readyup matches 0 run scoreboard players reset @s readyup
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
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run title @a[tag=!inParkour] actionbar [{"text":"Beginning countdown.","color":"green","bold":true}]
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run scoreboard players set $countSec CmdData 0
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run scoreboard players set $Countdown CmdData 10
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run bossbar set lobbybar name ["",{"text":"Game starting in ","bold":true,"color":"green"},{"score":{"name":"$Countdown","objective":"CmdData"},"bold":true,"color":"dark_green"},{"text":" seconds! ","bold":true,"color":"green"}]
execute if score $ForceCountdown CmdData matches 1.. unless score $gamestate CmdData matches 1 run scoreboard players set $gamestate CmdData 1

execute unless score $gamestate CmdData matches 1 as @a[scores={loverocks=50..}] unless entity @s[team=!Orange,team=!Purple] run advancement grant @s only tutorial:zzzunlockables/rocks