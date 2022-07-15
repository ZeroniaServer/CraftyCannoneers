execute if score $countSec CmdData matches 1 run data merge block -44 -28 0 {Text1:'{"text":""}',Text2:'{"text":"Countdown","color":"#55FF55","bold":true}',Text3:'{"text":"Started","color":"#55FF55","bold":true}',Text4:'{"text":""}'}

scoreboard players add $countSec CmdData 1
execute unless score $Countdown CmdData matches 10 if score $countSec CmdData matches 10 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1.1
execute if score $countSec CmdData matches 20.. as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.9
execute if score $Countdown CmdData matches 2..4 if score $countSec CmdData matches 20 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.7
execute if score $Countdown CmdData matches 2..4 if score $countSec CmdData matches 20 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.7
execute if score $Countdown CmdData matches 1 if score $countSec CmdData matches 1 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.7
execute if score $Countdown CmdData matches 1 if score $countSec CmdData matches 10 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.7
execute if score $Countdown CmdData matches 1 if score $countSec CmdData matches 20 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.7
execute if score $Countdown CmdData matches ..0 run function game:forcestart

execute if score $countSec CmdData matches 20.. run scoreboard players remove $Countdown CmdData 1

execute if score $countSec CmdData matches 20.. run scoreboard players reset $countSec CmdData

execute if score $Countdown CmdData matches 2.. run bossbar set lobbybar name ["",{"text":"Game starting in ","bold":true,"color":"green"},{"score":{"name":"$Countdown","objective":"CmdData"},"bold":true,"color":"dark_green"},{"text":" seconds! ","bold":true,"color":"green"}]
execute if score $Countdown CmdData matches 1 run bossbar set lobbybar name ["",{"text":"Game starting in ","bold":true,"color":"green"},{"score":{"name":"$Countdown","objective":"CmdData"},"bold":true,"color":"dark_green"},{"text":" second! ","bold":true,"color":"green"}]
execute if score $Countdown CmdData matches 0.. run bossbar set lobbybar color green

execute unless score $ForceCountdown CmdData matches 1.. unless entity @a[team=Purple] run tellraw @a {"text":"Countdown canceled! Both teams need at least 1 player.","color":"red"}
execute unless score $ForceCountdown CmdData matches 1.. unless entity @a[team=Purple] run scoreboard players set $gamestate CmdData 0
execute unless score $ForceCountdown CmdData matches 1.. unless entity @a[team=Orange] run tellraw @a {"text":"Countdown canceled! Both teams need at least 1 player.","color":"red"}
execute unless score $ForceCountdown CmdData matches 1.. unless entity @a[team=Orange] run scoreboard players set $gamestate CmdData 0
execute if score $gamestate CmdData matches 0 run function game:setreadysign
execute if score $gamestate CmdData matches 2 run scoreboard players reset $ForceCountdown CmdData