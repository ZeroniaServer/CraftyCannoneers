fill -54 -24 9 -55 -23 9 air

scoreboard players reset @a modisigns
scoreboard players reset @a moditimer
tag @a remove ModiOwner

scoreboard players operation $ticks CmdData = $TimeLimit CmdData
scoreboard players operation $ticks CmdData *= $1200 CmdData

title @a title {"text":"Settings Confirmed!","underlined":true,"color":"dark_green"}
title @a subtitle {"text":"The game is ready to play!","color":"green"}
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
execute as @a run function lobby:customizer/gameinfo

scoreboard players set $gamestate CmdData 0

item replace entity @e[tag=LobbyEntity] armor.head with air

tag @e[tag=joinpad] remove Locked
scoreboard players reset @e[tag=joinpad] CmdData