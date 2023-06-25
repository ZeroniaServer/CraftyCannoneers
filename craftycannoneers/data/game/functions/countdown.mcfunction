execute if score $countSec CmdData matches 1 run data modify block -44 -28 0 front_text.messages[0] set value '{"translate":"game.countdown_sign.1","color":"#55FF55","bold":true}'
execute if score $countSec CmdData matches 1 run data modify block -44 -28 0 front_text.messages[1] set value '{"translate":"game.countdown_sign.2","color":"#55FF55","bold":true}'
execute if score $countSec CmdData matches 1 run data modify block -44 -28 0 front_text.messages[2] set value '{"translate":"game.countdown_sign.3","color":"#55FF55","bold":true}'
execute if score $countSec CmdData matches 1 run data modify block -44 -28 0 front_text.messages[3] set value '{"translate":"game.countdown_sign.4","color":"#55FF55","bold":true}'

scoreboard players add $countSec CmdData 1

bossbar set lobbybar max 10
execute store result bossbar lobbybar value run scoreboard players get $Countdown CmdData

execute unless score $Countdown CmdData matches 10 if score $countSec CmdData matches 10 as @a at @s run playsound countdown master @s ~ ~ ~ 0.5 1.1
execute if score $countSec CmdData matches 20.. as @a at @s run playsound countdown master @s ~ ~ ~ 1 0.9
execute if score $Countdown CmdData matches 2..4 if score $countSec CmdData matches 20 as @a at @s run playsound countdown master @s ~ ~ ~ 1 0.7
execute if score $Countdown CmdData matches 1 if score $countSec CmdData matches 10 as @a at @s run playsound countdown master @s ~ ~ ~ 1 0.7
execute if score $Countdown CmdData matches 1 if score $countSec CmdData matches 20 as @a at @s run playsound countdown master @s ~ ~ ~ 1 0.7
execute if score $Countdown CmdData matches ..0 run function game:forcestart

execute if score $countSec CmdData matches 20.. run scoreboard players remove $Countdown CmdData 1

execute if score $countSec CmdData matches 20.. run scoreboard players reset $countSec CmdData

execute if score $Countdown CmdData matches 2.. run bossbar set lobbybar name ["",{"translate":"game.countdown.seconds","bold":true,"color":"green","with":[{"score":{"name":"$Countdown","objective":"CmdData"},"bold":true,"color":"dark_green"}]}]
execute if score $Countdown CmdData matches 1 run bossbar set lobbybar name ["",{"translate":"game.countdown.second","bold":true,"color":"green","with":[{"score":{"name":"$Countdown","objective":"CmdData"},"bold":true,"color":"dark_green"}]}]
execute if score $Countdown CmdData matches 0.. run bossbar set lobbybar color green

execute unless score $ForceCountdown CmdData matches 1.. unless entity @a[team=Purple] run tellraw @a {"translate":"game.countdown.canceled","color":"red"}
execute unless score $ForceCountdown CmdData matches 1.. unless entity @a[team=Purple] run scoreboard players set $gamestate CmdData 0
execute unless score $ForceCountdown CmdData matches 1.. unless entity @a[team=Orange] run tellraw @a {"translate":"game.countdown.canceled","color":"red"}
execute unless score $ForceCountdown CmdData matches 1.. unless entity @a[team=Orange] run scoreboard players set $gamestate CmdData 0
execute if score $gamestate CmdData matches 0 run function game:setreadysign
execute if score $gamestate CmdData matches 2 run scoreboard players reset $ForceCountdown CmdData